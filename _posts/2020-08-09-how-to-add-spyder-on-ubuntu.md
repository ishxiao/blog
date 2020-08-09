---
title: How to add spyder on ubuntu
time: 2020-08-09 12:30:00 +080
layout: post
keywords: spyder, linux, ubuntu
categories: program
tags : [linux, python]
---

**Spyder** app (icon) is not initialized on application desktop after Anaconda/conda is installed, which means one has to start the program in the terminal. Unfortunately, **Spyder** would be closed if the terminal is interrupted accidentally. 

Indeed, **Spyder** can be started by the command with the help of nohup

`nohup spyder &`.

As a result, the app will not be disturbed even if the terminal is closed.

The following will give a method to create a shortcut icon for spyder on application desktop.

Press `Ctrl+Alt+T` open a terminal and input the following command.

```
cd /usr/share/applications/
sudo gedit spyder4.desktop # depend on your spyder version  or any name you want
```


Input the following configuration into the `spyder4.desktop`, then save the file.

```
[Desktop Entry]
Encoding=UTF-8
Name=Spyder4
Comment=The Python IDE
Exec=/home/[YOUR-USER-NAME]/anaconda3/bin/spyder # depend on your installation location
Icon=/home/[YOUR-USER-NAME]ishx/anaconda3/share/icons/spyder3.png # depend on your installation location
StartupNotify=True
Terminal=False
Categories=Development;Science;IDE;Qt;
Type=Application
StartupNotify=True
MimeType=text/x-python;
X-AppStream-Ignore=True
```

In the **search bar**, type `spyder` or `sp`, the **spyder** app will occur.
