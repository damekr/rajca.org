---
title: "Home Access over VPN"
date: 2018-01-23
draft: true
---


# How to configure access to computer behind NAT Network using OpenVPN.

## Requirements:
* Linux server with root access preferable CentOS 7
* Basic bash knowledge

## Let's start!

### Server configuration part

#### Login to our VPN Server

```bash
  ssh root@<server>
```

#### Install additional epel repository

```bash
yum -y install epel-release
```

#### Make some updates

```bash
yum -y update && yum -y upgrade
```

#### Stop firewalld 

```bash
systemctl stop firwalld
```

#### Disable firwalld

```bash
systemctl disable firwalld
```

#### Start iptables

```bash
systemctl start iptables
```

#### Enable iptables

```bash
systemctl enable iptables
```
<br/>
**Now we have needed iptables up and running for further access controlling.**
<br/><br/>


#### Install EasyRSA

It's for generating server certificates

```bash
yum -y install easy-rsa
```

#### Install OpenVPN Server

```bash
yum -y install openvpn
```

#### Start OpenVPN Server

```bash
systemctl start openvpn@server
```

#### Enable OpenVPN Server

```bash
systemctl enable openvpn@server
```


<br/>
**We have installed up and running our VPN server, it's time to start and configure it for our purposes.**
<br/><br/>

#### Copy example server configuration file

```bash
cp /usr/share/doc/openvpn-*/sample/sample-config-files/server.conf /etc/openvpn
```

#### TBC 