---
title: How to install Matlab2016b on Ubuntu 16.04 LTS
time: 2017-10-16 12:36:00 +0800
layout: post
keywords: Matlab, Ubuntu, Linux
categories: Ubuntu
tags: Matlab
---

This tutorial will explain how to install Matlab2016b on Ubuntu 16.04 LTS.

The instaling files are usually divided into three packages, that is


```
R2016b_glnxa64_dvd1.iso
R2016b_glnxa64_dvd2.iso
Matlab 2016b Linux64 Crack.rar
```

**Table of Contents**

- [Step 0: Before installing](#step-0-before-installing)
- [Step 1: Mount the directory](#step-1-mount-the-directory)
- [Step 2: Start to install](#step-2-start-to-install)
- [Step 4: Mount the second dvd file](#step-4-mount-the-second-dvd-file)
- [Step 5: Complete the installation](#step-5-complete-the-installation)
- [Step 6: Obtain support](#step-6-obtain-support)

Step 0: Before installing
-------------------------

Unrar `crack` files and Read the `readme.txt` file.

```
$ sudo apt install unrar-free
$ mkdir crack && unrar *Crack.rar Crack
```

Step 1: Mount the directory
-------------------------------------------

```
$ sudo mkdir /media/[YOUR-USERNAME]/Matalb_R2016b
$ sudo mount -t auto -o loop R2016b_glnxa64_dvd1.iso /media/[YOUR-USERNAME]/Matlab_R2016b
```

Step 2: Start to install
------------------------

```
sudo /media//Matlab_R2016b/install
```

After a while, the GUI of *MathWorks Installer* appeared.

Step 3: Continue to install
--------------------------- 

- While the GUIT is presented, select *Use a File Installation key* and press *next*;
- Choose *Yes* to accept the terms of the license agreement and press *Next*;
- Select *I have the File Installation Key for my license*, and type the key from `readme.txt` (In Step 0). Once finished, then press *Next* to continue installing.

Step 4: Mount the second dvd file
---------------------------------

When completed about 90% of the installation, it asked you to insert the second dvd. 

Open a new terminal (such as, press `CTRL+ALT+T`), and type command in the following.

```
$ mkdir /media/[YOUR-USERNAME]/Matalb_R2016b
$ sudo umount /media/[YOUR-USERNAME]/Matlab_R2016b
$ sudo mount -t auto -o loop *dvd2.iso /media/Matlab_R2016b
```

Step 5: Complete the installation
-------------------------------------------------

Once finished the installing in the GUI, then umount the dvd2 from `/media/Matlab_R2016b`.

```
$ sudo umount /media/[YOUR-USERNAME]/Matlab_R2016b
$ rmdir /media/[YOUR-USERNAME]/Matlab_R2016b
```

Then try to activate Matlab.

```
$ sudo mkdir /usr/local/MATLAB/R2016b/bin/licenses
$ sudo chmod 777 /usr/local/MATLAB/R2016b/bin/licenses
$ sudo cp -a Crack/license_standalone.lic /usr/local/MATLAB/R2016b/bin/licenses
$ sudo cp -a Crack/R2016b/bin/glnxa64 /usr/local/MATLAB/R2016b/bin/glnxa64
$ sudo chmod 777 /usr/local/MATLAB/R2016b/bin/licenses/license_standalone.lic
$ sudo chmod -R 777 /usr/local/MATLAB/R2016b
```

**Note**: When first start the Matlab, try to destinate the license file to activate Matlab permanently. (`/usr/local/MATLAB/R2016b/bin/licenses`)

Step 6: Obtain support
----------------------

Get support from Mathworks, such as shortcut, rename the gcc library, and so on.

```
$ sudo apt-get install matlab-support
```

*Tip*: Default directory: `/usr/local/MATLAB/R2016b`.