# ICT171 Assignment 2 - DNS Setup Documentation

**Name:** Syed Muhammad Haris Kazmi 
**Student ID:** 35501372
**Webpage Public IP:** 13.51.207.91

---

## Setting up DNS

Go to a Domain Name Registrar (DNR), such as Namecheap, Cloudflare, etc., and obtain a domain. Go to the DNR dashboard, click on manage your domain
>View screenshot1.png for further clarification

Go to DNS settings
>View screenshot 2.png for further clarification

The easiest way to link a domain to your EC2 server is to make a record.

### Create a Record

#### Record 1:
- **Type:** A Record
- **Host:** @
- **Value:** <your.EC2.server.Public.IP>
- **TTL:** Automatic

>This record maps your root domain to your EC2 instance's IPv4 address. So when someone types your domain into a browser, DNS knows to send them to your server.

#### Record 2: 
- **Type:** A Record
- **Host:** www
- **Value:** <your.EC2.server.Public.IP>
- **TTL:** Automatic

>This lets people access your site via www.<your_domain_name>.<your_TLD> as well — it points that subdomain to the same EC2 IP.


>**View screenshot3.png for further clarification on records**

---

After these changes, it may take a few minutes up to a few hours for the DNS changes to update through the internet.
>You can check by going to your domain and seeing if it takes you to your EC2 server. You can also do this through your terminal by using the command:
>```bash
>ping <your_domain_name>.<your_TLD>
>```

---
