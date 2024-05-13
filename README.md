# Einrichtungsskript für Entwicklungstools

Dieses Skript automatisiert die Einrichtung verschiedener Entwicklungstools auf Ihrem System. Es ermöglicht die schnelle Installation und Konfiguration von Tools, die für die Softwareentwicklung und das Arbeiten mit Container-Orchestrierungssystemen erforderlich sind.

## Verwendung
1. **Skript herunterladen**: Laden Sie das Skript `dev_tools_setup.sh` herunter:
   ```bash
   git clone https://github.com/DerCommiter/development_tools.git 
   
2. **Die Ausführungsberechtigung für das Skript hinzufügen**
   ```bash
   chmod +x dev_tools_setup.sh
   

3. **Skript ausführen**:
   ```bash   
   ./dev_tools_setup.sh

## Konfiguration:

Das Skript erstellt ein Verzeichnis namens dev_tools in Ihrem Home-Verzeichnis und lädt die erforderlichen Softwarekomponenten herunter. Zusätzlich werden symbolische Links zu den ausführbaren Dateien im Verzeichnis $HOME/bin erstellt.

## Unterstützte Entwicklungstools

Das Skript installiert und konfiguriert die folgenden Entwicklungstools:

- Visual Studio Code: Ein Code-Editor mit Unterstützung für verschiedene Programmiersprachen.
- OpenShift Client (oc): Ein Befehlszeilentool zum Verwalten von OpenShift-Clustern.
- Helm: Ein Paketmanager für Kubernetes-Anwendungen.
- Argo CD: Ein kontinuierliches Bereitstellungstool für Kubernetes.