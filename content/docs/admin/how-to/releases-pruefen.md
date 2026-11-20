---
title: "Releases überprüfen"
description: "Prüfen, dass eine heruntergeladene Datei, ein Container-Image oder ein Helm-Chart vom Release-Workflow von sitrep gebaut wurde."
weight: 50
---
Jedes Release von sitrep ist signiert und der Build ist beglaubigt. So können Sie prüfen, dass das, was Sie heruntergeladen haben, vom Release-Workflow des Projekts aus dem getaggten Quellcode gebaut und danach nicht verändert wurde. Die Signaturen sind *schlüssellos* ([Sigstore](https://www.sigstore.dev)): Es gibt keinen Projektschlüssel zu verteilen. Als Signierer gilt der Release-Workflow im Produkt-Repository, das in einem öffentlichen Transparenzlog festgehalten wird.

| Was | Wie es geschützt ist | Prüfen mit |
| --- | --- | --- |
| Release-Dateien (`.tar.gz`, `.deb`, `.rpm`) | `checksums.txt` ist signiert und enthält die Prüfsummen aller Dateien | `cosign verify-blob`, dann `sha256sum` |
| Container-Image `ghcr.io/f-eld-ch/sitrep` | signiertes Image und Beglaubigung der Build-Herkunft | `cosign verify`, `gh attestation verify` |
| Helm-Chart `ghcr.io/f-eld-ch/charts/sitrep` | signiertes Chart | `cosign verify` |
| Git-Tag `vYY.M.P` | signierter Tag | Abzeichen *Verified* auf GitHub, oder `git tag -v` |

Sie brauchen [cosign](https://docs.sigstore.dev/cosign/system_config/installation/) (ab Version 3 für das hier verwendete Bundle-Format) und für Beglaubigungen die [GitHub-Kommandozeile](https://cli.github.com) `gh`. Die Befehle verwenden `v26.11.3` als Beispiel. Ersetzen Sie es durch die Version, die Sie prüfen.

## Release-Dateien

Laden Sie `checksums.txt` und `checksums.txt.sigstore.json` vom [GitHub-Release](https://github.com/f-eld-ch/sitrep/releases) neben der gewünschten Datei herunter. Danach:

```bash
# 1. Die Prüfsummendatei wurde vom Release-Workflow für diesen Tag signiert
cosign verify-blob checksums.txt \
  --bundle checksums.txt.sigstore.json \
  --certificate-identity "https://github.com/f-eld-ch/sitrep/.github/workflows/release.yml@refs/tags/v26.11.3" \
  --certificate-oidc-issuer https://token.actions.githubusercontent.com

# 2. Ihre Datei stimmt mit den signierten Prüfsummen überein
sha256sum --check --ignore-missing checksums.txt
```

Beide Befehle müssen erfolgreich sein. `Verified OK` von cosign und `OK` für Ihre Datei von `sha256sum` bedeuten, dass die Datei vom Release-Workflow stammt.

Die Beglaubigung der Build-Herkunft hält fest, mit welchem Commit und welchem Workflow eine Datei gebaut wurde:

```bash
gh attestation verify sitrep_26.11.3_linux_amd64.tar.gz --repo f-eld-ch/sitrep
```

Die Beglaubigung hängt auch am Release, als `sitrep_<version>.intoto.jsonl` (für die Dateien) und `sitrep-image_<version>.intoto.jsonl` (für das Image). So lässt sie sich ohne Zugriff auf den Speicher von GitHub prüfen:

```bash
gh attestation verify sitrep_26.11.3_linux_amd64.tar.gz --repo f-eld-ch/sitrep \
  --bundle sitrep_26.11.3.intoto.jsonl
```

## Software-Stückliste (SBOM)

Jedes Release enthält Stücklisten im Format SPDX JSON: `<archiv>.sbom.json` listet die Go-Module einer Binärdatei auf, `sitrep-ui_<version>.sbom.json` die npm-Pakete der Weboberfläche. Beide nennen die Lizenz jedes Pakets, soweit sie bekannt ist. Sie stehen in `checksums.txt`, die obige Prüfung deckt sie also ab.

Das Container-Image enthält die Stückliste der Oberfläche zusätzlich als `/var/run/ko/sitrep-ui.spdx.json`. Die npm-Pakete sind in die eine Binärdatei einkompiliert. Image-Scanner wie Trivy lesen diese Datei, um sie neben den Go-Modulen zu sehen, die sie in der Binärdatei selbst finden.

Das Container-Image trägt ausserdem eine eigene Stückliste in der Registry, als Image mit dem Tag `sha256-<digest des Images>.sbom` im selben Repository. Sie hat keine eigene Signatur, das Image selbst ist signiert (siehe unten).

## Container-Image

```bash
cosign verify ghcr.io/f-eld-ch/sitrep:v26.11.3 \
  --certificate-identity "https://github.com/f-eld-ch/sitrep/.github/workflows/release.yml@refs/tags/v26.11.3" \
  --certificate-oidc-issuer https://token.actions.githubusercontent.com

gh attestation verify oci://ghcr.io/f-eld-ch/sitrep:v26.11.3 --repo f-eld-ch/sitrep
```

Tags wie `latest` und `v26` verschieben sich. Prüfen Sie den Versions-Tag, oder legen Sie das Image per Digest fest (`image.digest` im Helm-Chart) und prüfen Sie diesen Digest. Führen Sie die Prüfungen vor dem Deployment aus, zum Beispiel in Ihrer CI oder mit einem Admission Controller, der cosign-Signaturen durchsetzt.

## Helm-Chart

Das Chart hat eigene Tags und wird vom Chart-Workflow signiert:

```bash
cosign verify ghcr.io/f-eld-ch/charts/sitrep:1.2.0 \
  --certificate-identity-regexp '^https://github.com/f-eld-ch/sitrep/\.github/workflows/helm-workflow\.yml@refs/tags/chart-v' \
  --certificate-oidc-issuer https://token.actions.githubusercontent.com
```

## Git-Tags

Release-Tags werden von der Person signiert, die das Release erstellt. GitHub zeigt *Verified* beim Tag und auf der Release-Seite. Zum lokalen Prüfen holen Sie die Tags und führen `git tag -v v26.11.3` aus. Dafür braucht git den öffentlichen Schlüssel der Person (GPG-Schlüsselbund, oder `gpg.ssh.allowedSignersFile` bei SSH-Schlüsseln).

## Wenn eine Prüfung fehlschlägt

Installieren Sie die Datei nicht und stellen Sie das Image nicht bereit. Melden Sie es vertraulich gemäss der [Sicherheitsrichtlinie](https://github.com/f-eld-ch/sitrep/blob/develop/.github/SECURITY.md).
