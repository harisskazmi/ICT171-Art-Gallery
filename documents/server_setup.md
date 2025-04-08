# ICT171 Assignment 2 - Server Setup Documentation

**Name:** Syed Muhammad Haris Kazmi  
**Student ID:** 35501372  
**Webpage Public IP:** 13.51.207.91

---

## Creating an Instance

- **OS Image:** Ubuntu  
- **Architecture:** 64-bit x86  
- **Instance Type:** t3.micro  
- **Key Pair:** Create and download the `.pem` file  
- **Storage:** 8 GiB

### Inbound Rules

- **SSH (Port 22):** My IP address (for admin access)  
- **HTTP (Port 80):** Anywhere (to allow webpage access)  
- **HTTPS (Port 443):** Anywhere (to allow secure webpage access)

### Outbound Rules

- **All Protocols:** Allowed to Anywhere

> After configuring the instance, click **Launch Instance**.

---

## Connecting to the Server

Use the following command to SSH into your EC2 instance:
```bash
ssh -i <key_filename>.pem ubuntu@13.51.207.91
```
If you get a permissions error for the key file:
```bash
sudo chmod 400 <key_filename>.pem
```
## Install Apache

Run the following commands to install and start Apache:
```bash
sudo apt update
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
```
---

## Upload HTML Design

Use a template and modify it, adhering to the license.
I used a tempelate from freehtml5.co. I changed the information, images, directories and fonts. As for the animations, that was in the template.

Run the following command on your local device to copy the webpage folder to your EC2 server:
```bash
scp -i /path/to/<key_filename>.pem -r /path/to/webpage_folder ubuntu@13.51.207.91:/var/www/html
```
Make sure that the webpage folder is in the correct directory.

---

After following these steps your webpage should be working.


    
    
