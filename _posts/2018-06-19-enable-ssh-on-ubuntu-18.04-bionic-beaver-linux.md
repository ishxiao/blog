---
title: Enable SSH on Ubuntu 18.04 Bionic Beaver Linux
time: 2018-06-19 10:00:00 +0800
layout: post
keywords: Ubuntu, ssh
categories: Ubuntu
tags : [Ubuntu, ssh]
---

## Contents

<!-- MarkdownTOC -->

- Objective
- Operating System and Software Versions
- Requirements
- Difficulty
- Conventions
- Instructions
- Enable SSH on Ubuntu
- Enable/Disable SSH on Ubuntu

<!-- /MarkdownTOC -->


## Objective

The below guide will provide you with information on how to enable ssh on Ubuntu 18.04 Linux. SSH stands for secure shell which allows encrypted remote login connections between client and server over insecure network.

## Operating System and Software Versions

**- Operating System:** - Ubuntu 18.04 Bionic Beaver

**- Software:** - OpenSSH 7.5 or higher

## Requirements

Privileged access to your Ubuntu System as root or via `sudo` command is required.

## Difficulty

EASY

## Conventions

**- #** - requires given *linux commands* to be executed with root privileges either directly as a root user or by use of `sudo` command
**- $** - requires given *linux commands* to be executed as a regular non-privileged user

## Instructions

## Enable SSH on Ubuntu

In order to enable ssh on Ubuntu Linux, we first need to perform an SSH package installation. *Open up terminal* and enter command:

```
$ sudo apt install ssh
```

![alt text]({{ site.baseurl }}/assets/img/blog/install-ssh.png "To enable SSH on Ubuntu, first install SSH package.")

Confirm that SSH server is up and running by executing the bellow command. Look for keyword *Active: active (running)*. Press *q* if you need to get your command line prompt back:

```
$ service ssh status
```

![alt text]({{ site.baseurl }}/assets/img/blog/ssh-status.png "SSH is now enabled and listening on port 22.")

At this stage you should be able to login from this host to any other SSH enabled Ubuntu server. For example, to login to server with host name *isx* as user *192.168.199.154* enter:

```
$ ssh isx@192.168.199.154
```

![alt text]({{ site.baseurl }}/assets/img/blog/ssh-login.png "SSH is now logining.")

## Enable/Disable SSH on Ubuntu

In an event that you need to temporarily disable SSH on your Ubuntu host execute:


```
$ sudo service ssh stop
```

To start again run:

```
$ sudo service ssh start
```

![alt text]({{ site.baseurl }}/assets/img/blog/ssh-start-stop.png "Starting and Stopping SSH service on Ubuntu 18.04.")

In order to completely disable SSH after reboots execute:

```
$ sudo systemctl disable ssh
```

To enable SSH again on your Ubuntu host use command:

```
$ sudo systemctl enable ssh
```

![alt text]({{ site.baseurl }}/assets/img/blog/ssh-enable-disable.png "Disable and Enable SSH on Ubuntu 18.04.")