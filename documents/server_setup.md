#ICT171 Assignment 2 - Server Setup Documentation

Name: Syed Muhammad Haris Kazmi
Student ID: 35501372
Webpage Public IP: 13.51.207.91

##Creating and Instance:

  OS Image: Ubuntu
  Architecture: 64 bit x86
  Instance type: t3.micro
  Create key and save it
  ###Inbound rules:
    SSH Port: My IP Address (Admin controls)
    HTTP Port: Anywhere (So webpage can be accessed)
    HTTPS Port: Anywhere (So webpage can be accessed)
  ###Outbound rules:
    All Protocols IP: Anywhere
  Storage: 8 GiB
  
  Launch instance

After Instance is created, we have to access it using ubuntu VM

##Connecting to the Server
  
  ###Code:
  ssh -i <key_filename>.pem ubuntu@<public_IP_of_instance>

  - if you get permission error for the key, use the code:
      sudo chmod 400 <key_filename>.pem

##Installing Apache:

  ###Code:
  sudo apt update  
  sudo apt install apache2 -y  
  sudo systemctl start apache2  
  sudo systemctl enable apache2  

##Uploading HTML files:


    
    
