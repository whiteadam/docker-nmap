# docker-nmap
Alpine Linux image with nmap, libssl, and cacerts.



## Why?
[NMAP](https://nmap.org/) can sometimes be confusing or invasive to install. For
instance, what if you just want to know if a server can see an open port on
another server? Why install nmap for that when you could just run the following?

```console
$ docker run --rm whiteadam/nmap -Pn -p 80 www.whiteadam.com

Starting Nmap 7.12 ( https://nmap.org ) at 2016-06-22 19:17 UTC
Nmap scan report for www.whiteadam.com (54.231.98.194)
Host is up (0.044s latency).
rDNS record for 54.231.98.194: s3-website-us-east-1.amazonaws.com
PORT   STATE SERVICE
80/tcp open  http

Nmap done: 1 IP address (1 host up) scanned in 0.36 seconds
```
Good news, that port is totally open!

## Usage

### Check Multiple Ports

```console
$ docker run --rm whiteadam/nmap -Pn -p 80,443 www.whiteadam.com
```
---
### Check SSL Ciphers

```console
$ docker run --rm whiteadam/nmap --script ssl-enum-ciphers -p 443 www.amazon.com
```
---
### ISUP Script

Are you tired of launching servers and waiting for ssh to become available?
If so, *GOOD NEWS!* I made a script called `isup` that will tell you when your server is ready to log into (or at least when the port is open.

Give it a try:
```console
$ docker run --rm whiteadam/nmap isup whiteadam.com 80
Waiting for 80 on whiteadam.com to become available...
Your server is up!
```

## Tags

* `whiteadam/nmap:latest` based on `alpine:3.4`

## Issues
If you find anything, please open an issue on [GitHub](https://github.com/whiteadam/docker-nmap)

* There is a known issue that the `--trace` argument does not work. I'm looking
  into a resolution.

## License

Copyright © 2016 Adam White

All contents licensed under the [MIT License](LICENSE)
