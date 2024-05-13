#!/bin/bash

# URLs for software components
CODE_URL="https://code.visualstudio.com/sha/download?build=stable&os=linux-x64"
OC_URL="https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/4.15.11/openshift-client-linux.tar.gz"
HELM_URL="https://get.helm.sh/helm-v3.14.4-linux-amd64.tar.gz"
ARGOCD_URL="https://github.com/argoproj/argo-cd/releases/download/v2.10.9/argocd-linux-amd64"

# A Directory to save the downloaded files into
DEST_DIR="$HOME/dev_tools"

# Check if dev_tools directory already exists
dev_tools_exists() {
    if [ -d "$DEST_DIR" ]; then
        echo "The directory $DEST_DIR already exists. Please delete it and execute this script again."
        exit 1
    else
        mkdir -p "$DEST_DIR"
        return 0
    fi
}

# Download file from URL and save it as FILE_NAME in a DEST_DIR
download() {
    local URL=$1
    local FILE_NAME=$2
    # Download the file using curl
    echo "Downloading $FILE_NAME ..."
    curl -fsSL -o "$DEST_DIR/$FILE_NAME" "$URL"
}

extract_files() {
    # Iterate over each .tar.gz file in DEST_DIR
    for file in "$DEST_DIR"/*.tar.gz; do
        if [ -f "$file" ]; then
            echo "Extracting $file ..."
            tar -xzf "$file" -C "$DEST_DIR"
            rm "$file" # Remove the .tar.gz file after extraction
        fi
    done
    
    echo "Extraction complete."
}

create_exec_link() {
    local EXEC_PATH="$1"
    local LINK_NAME="$HOME/bin/$2"
    
    # Check if the executable exists
    if [ ! -x "$EXEC_PATH" ]; then
        echo "Error: $EXEC_PATH is not an executable file."
        return 1
    fi
    
    # Check if $HOME/bin directory exists, if not, create it
    if [ ! -d "$HOME/bin" ]; then
        mkdir -p "$HOME/bin"
    fi
    
    # Check if the link already exists
    if [ -e "$LINK_NAME" ]; then
        echo "Error: $LINK_NAME already exists."
        return 1
    fi
    
    # Create the symbolic link
    ln -s "$EXEC_PATH" "$LINK_NAME"
    
    echo "Symbolic link created: $LINK_NAME"
}

dev_tools_exists

download $CODE_URL "code.tar.gz" $DEST_DIR
download $OC_URL "oc.tar.gz" $DEST_DIR
download $HELM_URL "helm.tar.gz" $DEST_DIR
download $ARGOCD_URL "argocd" $DEST_DIR

extract_files

# Add the executable permission to argocd
chmod +x $DEST_DIR/argocd

# Create links to the executable files located in $HOME/dev_tools
create_exec_link "$DEST_DIR/VSCode-linux-x64/bin/code" code
create_exec_link "$DEST_DIR/linux-amd64/helm" helm
create_exec_link "$DEST_DIR/oc" oc
create_exec_link "$DEST_DIR/argocd" argocd