
SOURCE_DIR="/var/www/html/optimized_images"

BACKUP_DIR="$HOME/backups"

now=$(date +"%d_%m_%y")

BACKUP_FILE="backup_$now.zip"
FULL_PATH="$BACKUP_DIR/$BACKUP_FILE"

mkdir -p "$BACKUP_DIR"

zip -r "$FULL_PATH" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo " Backup successful: $FULL_PATH"
else
    echo " Backup failed!"
fi
