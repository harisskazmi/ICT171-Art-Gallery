# ICT171 Assignment 2 - SSL Certificate Documentation

**Name:** Syed Muhammad Haris Kazmi  
**Student ID:** 35501372  
**Webpage Public IP:** 13.51.207.91
**Domain(s):** www.artbyhariss.space, artbyhariss.space

---

We are going to obtain our free SSL certificate from Let's Encrypt. 

## Prerequisites:

- You already have a web server created and are connected to it
- You have used an Apache web server to create your website
- You have purchased and set up DNS

---

## Installing Certbot

Install Snapd using the following commands:

```bash
sudo snap install core
sudo snap refresh core
```

Install Certbot using the following commands:

```bash
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot
```

Install Certbort Plug-in for Apache:

```bash
sudo certbot --apache
```
>Certbot automatically receives a SSL Certificate from Let's Encrypt

---

## Prompts

This will prompt you to enter your email address (for renewal notices) and Terms or conditions. 
>View screenshot4.png
Then it will ask you to enter domain(s) name(s) You will enter : <your_domain_name.<your_TDL> www.<your_domain_name.<your_TDL>

>By asking the names of your domain(s) Certbot is asking which domain(s) should the SSL Certificate cover
>Your SSL certificate should be activated now for both of your domains

---

## Testing

Try the code:
```bash
sudo certbot renew --dry-run
```
You should get "Congratulations, all simulated renewals succeeded:"

>Check the SSL by going to your domain and subdomain (www) and see if there is a lock next to it
>View screenshot5.png and screenshot6.png

---

