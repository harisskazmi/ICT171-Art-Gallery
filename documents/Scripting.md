# ICT171 Assignment 2 - Script Documentation

**Name:** Syed Muhammad Haris Kazmi  
**Student ID:** 35501372  
**Webpage Public IP:** 13.51.207.91
**Domain(s):** www.artbyhariss.space, artbyhariss.space

---

## Script 1:

This script searches all images with types: jpg, jpeg, and png, in a specific directory. It compresses them, and then stores the optimized images in a folder. This helps reduce image size which, in turn reduces website loading times.

It uses ImageMagic tools which are used to compress and convert images.

The code is written in bash.


### Logic

- Create a .sh file in a directory:
  
  ```bash
  nano /your/file/path/<filename>.sh
  ```
  
- Create source and destination variables:
  
  ```bash
  SOURCE_DIR="/your/path/to/source/images"
  DESTINATION_DIR="/your/path/to/destination/optimized_images"
  ```
  
- Create a destination directory if it doesn't exist:
  
  ```bash
  mkdir -p "DESTINATION_DIR"
  ```
  
- Go through all images of types: jpg, jpeg, png:
  
  ```bash
  for image in "$SOURCE_DIR"/*.{jpg,jpeg,png}; do
  ```
  
- Check if an object is an file:
  
  ```bash
    if [[ -f "$image" ]]; then
  ```
  
- Copy filename:
  
  ```bash
  filename=$(basename "$image")
  ```
  
- Optimize image using ImageMagic tools and store it in Destination directory:
  
  ```bash
  convert "$image" -strip -interlace Plane -quality 85 "$DESTINATION_DIR/$filename"
  ```
  
  >"strip" deletes metadeta to reduce size
  >"interlace" makes images load faster on web
  >"quality 85" reduces quality to 85% of original to reduce size

- Print a message for a confirmation that file has been optimized:
  
  ```bash
  echo "Optimized: $filename"
  ```
  
- Close the loop:
  
  ```bash
  fi
  done
  ```

  ---

### Execution

  ```bash
  ~/your/path/to/the/script.sh
  ```

---

### Automation

Create a cron job to automate the script.

Run:

```bash
crontab -e
```
>Select nano as editor

Add the time for automation:

```bash
59 23 * * 0 /path/to/your/script.sh >> /path/to/you/file.log 2>&1
```
> 59 refers to minutes
> 23 refers to hours
> * refers to every day of the month
> * refers to every month of the year
> 0 refers to day of the week (0 = Sunday)
> >> refers to the creation of a log file to the path provided
> 2>&1 appends errors to the same log file 

Save the file and then you're good to go

---

## Script 2: 

This script creates a local backup of the images weekly, zips them, and stores them.

It requires you to download zip

### Logic:

- Create a .sh file in a directory:
  
```bash
nano /your/path/to/script.sh
```

- Create source and destination variables:

  ```bash
  SOURCE_DIR="your/path/to/folder/you/want/to/backup
  BACKUP_DIR="$HOME/backups"
  ```

- Get current date:

  ```bash
  now=$(date + "%d_%m_%y")
  ```
- Create filename:

  ```bash
  BACKUP_FILE="backup_$now.zip"
  ```

- Create a full path variable:

  ```bash
  FULL_PATH="$BACKUP_DIR/BACKUP_FILE"

- Create backup directory if it doesn't exist

  ```bash
  mkdir -p "$BACKUP_DIR"

- Zip contents of the folder into the backup file

  ```bash
  zip -r "$FULL_PATH" "$SOURCE_DIR"
  ```
  >This command copies the contents of the source directory, zips them, and stores them in the full path.

- Print results

  ```bash
  if [ $? -eq 0 ]; then
    echo "Backup successful: $FULL_PATH"
  else
    echo "Backup failed!"
  fi
  ```
  ---

  ### Execution:

  Go to the directory where you stored the script.sh file:

  ```bash
  cd /your/path/to/<script.sh_DIRECTORY>
  ```
  Run the following command to execute the file:

  ```bash
  ./<filename>.sh
  ```

  ---

  ### Automation:

  Create a cron job to automate the script.
  
  Run:
  
  ```bash
  crontab -e
  ```
  >Select nano as editor
  >If you have already made a script previously, go the next line in the terminal and add another job
  
  Add the time for automation:
  
  ```bash
  59 23 * * 0 /path/to/your/script.sh 
  ```
  > 59 refers to minutes
  > 23 refers to hours
  > * refers to every day of the month
  > * refers to every month of the year
  > 0 refers to day of the week (0 = Sunday)
  
  Save the file and then you're good to go
  
  ---


  

  


