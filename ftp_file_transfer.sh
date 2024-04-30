#!/bin/bash

# Vérification du nombre d'arguments
if [ "$#" -ne 8 ]; then
    echo "Usage: $0 <source_ip> <source_user> <source_pass> <source_path> <dest_ip> <dest_user> <dest_pass> <your_name>"
    exit 1
fi

# Assignation des arguments aux variables
source_ip="$1"
source_user="$2"
source_pass="$3"
source_path="$4"
dest_ip="$5"
dest_user="$6"
dest_pass="$7"
your_name="$8"

# Téléchargement depuis le serveur source FTP
echo "Téléchargement depuis le serveur source FTP..."
wget "ftp://$source_user:$source_pass@$source_ip$source_path" -O "data.txt" || { echo "Erreur lors du téléchargement depuis le serveur source."; exit 1; }

# Renommage du fichier téléchargé
echo "Renommage du fichier téléchargé..."
mv "data.txt" "$your_name.txt" || { echo "Erreur lors du renommage du fichier."; exit 1; }

# Dépôt du fichier renommé sur le serveur destination FTP
echo "Dépôt du fichier renommé sur le serveur destination FTP..."
curl -T "$your_name.txt" "ftp://$dest_user:$dest_pass@$dest_ip/DEST/" || { echo "Erreur lors du dépôt du fichier sur le serveur destination."; exit 1; }

echo "Opération terminée avec succès!"
exit 0
