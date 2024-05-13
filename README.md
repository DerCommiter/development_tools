# Einrichtungsskript für Entwicklungstools

Dieses Skript automatisiert die Installation und Konfiguration verschiedener Entwicklungstools auf Ihrem System. Es ermöglicht eine schnelle Bereitstellung und Konfiguration von Tools, die für die Softwareentwicklung und das Arbeiten mit Container-Orchestrierungssystemen hilfreich sind.

## Verwendung
1. **Skript herunterladen**: Laden Sie das Skript `setup_develompent_tools.sh` herunter:
   ```bash
   git clone https://github.com/DerCommiter/development_tools.git && cd development_tools
   
2. **Die Ausführungsberechtigung für das Skript hinzufügen**:
   ```bash
   chmod +x setup_develompent_tools.sh
   
3. **Skript ausführen**:
   ```bash   
   ./setup_develompent_tools.sh

## Konfiguration:

Das Skript erstellt ein Verzeichnis namens dev_tools in Ihrem Home-Verzeichnis und lädt die erforderlichen Softwarekomponenten herunter. Zusätzlich werden symbolische Links zu den ausführbaren Dateien im Verzeichnis $HOME/bin erstellt.

## Unterstützte Entwicklungstools

Das Skript installiert und konfiguriert die folgenden Entwicklungstools:

- Visual Studio Code: Ein Code-Editor mit Unterstützung für verschiedene Programmiersprachen.
- OpenShift Client (oc): Ein Befehlszeilentool zum Verwalten von OpenShift-Clustern.
- Helm: Ein Paketmanager für Kubernetes-Anwendungen.
- Argo CD: Ein kontinuierliches Bereitstellungstool für Kubernetes.