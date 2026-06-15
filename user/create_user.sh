#!/bin/bash

# Skript: user_add.sh
# Beschreibung: Legt einen Benutzer mit Passwort an (über Parameter)
# Usage: sudo ./user_add.sh <benutzername> <passwort>

# Prüfe, ob als root ausgeführt wird
if [ "$(id -u)" -ne 0 ]; then
    echo "Dieses Skript muss als root ausgeführt werden!" >&2
    exit 1
fi

# Prüfe Parameter
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <benutzername> <passwort>" >&2
    exit 1
fi

username="$1"
password="$2"

# Prüfe, ob der Benutzer bereits existiert
if id "$username" &>/dev/null; then
    echo "Fehler: Benutzer $username existiert bereits!" >&2
    exit 1
fi

# Benutzer anlegen
useradd -m "$username" || { echo "Fehler beim Anlegen des Benutzers!" >&2; exit 1; }

# Passwort setzen
echo "$username:$password" | chpasswd || { echo "Fehler beim Setzen des Passworts!" >&2; exit 1; }

echo "Benutzer $username wurde erfolgreich angelegt und Passwort gesetzt."
exit 0
