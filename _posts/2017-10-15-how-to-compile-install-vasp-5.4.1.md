---
title: How to compile and install VASP 5.4.1 on Ubuntu 16.04 LTS
time: 2017-10-15 12:36:00 +0800
layout: post
keywords: VASP, Ubuntu, Linux
categories : [Ubuntu]
tags : [VASP]
---

This tutorial will explain how to install VASP 5.4.1 on Ubuntu 16.04 LTS.

**Table of Contents**

- [Step 0: Before installing](#step-0-before-installing)
- [Step 1: Acquiring the necessary packages](#step-1-acquiring-the-necessary-packages)
- [Step 2: Extracting the VASP source tar and adding patch](#step-2-extracting-the-vasp-source-tar-and-adding-patch)
- [Step 3: Setting the build procedure](#step-3-setting-the-build-procedure)
- [Step 4: Configuring the makefile](#step-4-configuring-the-makefile)
- [Step 5: Compiling](#step-5-compiling)


Step 0: Before installing
-------------------------

As an old saying syas, 

> Sharpening your axe will not delay your job of cutting wood.

There is a marvelous [wiki of installing VASP](https://cms.mpi.univie.ac.at/wiki/index.php/Installing_VASP), highly recommend.

Assuming you have already got the source files of ***vasp src***.

```
vasp.5.4.1.05Feb16.tar.gz
patch.5.4.1.14032016.gz
patch.5.4.1.03082016.gz
```


Step 1: Acquiring the necessary packages
----------------------------------------

Install some necessary packages.

```
$ sudo apt-get install make
$ sudo apt-get install g++ build-essential 
$ sudo apt-get install gfortran
$ sudo apt-get install libopenmpi-dev
$ sudo apt-get install libblas-dev
$ sudo apt-get install liblapack-dev
$ sudo apt-get install libscalapack-mpi-dev
$ sudo apt-get install libscalapack-openmpi1
$ sudo apt-get install libfftw3-dev
$ sudo apt-get install libfftw3-3
```

Step 2: Extracting the VASP source tar and adding patch
-------------------------------------------------------

Go to the root directory of the VASP package.

```
$ tar -zxvf vasp.5.4.1.05Feb16.tar.gz
$ gunzip patch.5.4.1.14032016.gz
$ gunzip patch.5.4.1.03082016.gz
$ cd vasp.5.4.1
$ patch -p0 < ../patch.5.4.1.14032016
$ patch -p0 < ../patch.5.4.1.03082016
```

Step 3: Setting the build procedure
-----------------------------------
You need to copy the makefile corresponding to your build architecture. Here, I assume we are going to use the GNU compiler, so you need to copy the makefile for gfortran

```
$ cp arch/makefile.include.linux_gfortran makefile.include
```

Step 4: Configuring the makefile
--------------------------------

You need to edit the file `makefile.include` and tweak some directives in the Makefile to point the compiler to the right libraries and header files. Try the following directives.

```
$ gedit makefile.include
```

or 

```
$ vim makefile.include
```

```
# Precompiler options
CPP_OPTIONS= -DMPI -DHOST=\"IFC91_ompi\" -DIFC \
             -DCACHE_SIZE=4000 -Davoidalloc \
             -DMPI_BLOCK=8000 -DscaLAPACK -Duse_collective \
             -Duse_bse_te -Duse_shmem -Dtbdyn

CPP        = gcc -E -P -C $*$(FUFFIX) >$*$(SUFFIX) $(CPP_OPTIONS)

FC         = mpif90.openmpi
FCL        = mpif90.openmpi

FREE       = -ffree-form -ffree-line-length-none

FFLAGS     = 
OFLAG      = -O2 -mtune=native -m64
OFLAG_IN   = $(OFLAG)
DEBUG      = -O0

LIBDIR     = /usr/lib/x86_64-linux-gnu
BLAS       = -L$(LIBDIR) -lblas
LAPACK     = -L$(LIBDIR) -llapack
BLACS      = -lblacs-openmpi -lblacsCinit-openmpi -lblacsF77init-openmpi
SCALAPACK  = -L$(LIBDIR) -lscalapack-openmpi $(BLACS)

OBJECTS    = fftmpiw.o fftmpi_map.o  fftw3d.o  fft3dlib.o \
             /usr/lib/x86_64-linux-gnu/libfftw3.a
INCS       =-I/usr/include -I/usr/lib/openmpi/include

LLIBS      = $(SCALAPACK) $(LAPACK) $(BLAS)

OBJECTS_O1 += fft3dfurth.o fftw3d.o fftmpi.o fftmpiw.o chi.o
OBJECTS_O2 += fft3dlib.o

# For what used to be vasp.5.lib
CPP_LIB    = $(CPP)
FC_LIB     = $(FC) 
CC_LIB     = gcc
CFLAGS_LIB = -O
FFLAGS_LIB = -O1
FREE_LIB   = $(FREE)

OBJECTS_LIB= linpack_double.o getshmem.o

# Normally no need to change this
SRCDIR     = ../../src
BINDIR     = ../../bin

```

Step 5: Compiling
-----------------

You are now ready to compile VASP.

`$ make all`

Once finished without error, you would obtain the compilied files in the directory (i.e. `bin/`):


```
vasp.5.4.1/
├── arch/ ...
├── bin/ 
│    ├── vasp_gan
│    ├── vasp_ncl
│    └── vasp_std
├── build/ ...
├── src/ ...
├── makefile
├── makefile.include
└── README
```

More detail seeing here:

   - [Official site of VASP](https://www.vasp.at/)
   - [The VASP Manual](https://cms.mpi.univie.ac.at/wiki/index.php/The_VASP_Manual)
   - [Additional Contents of VASP](https://cms.mpi.univie.ac.at/vasp/vaspContents.html)
   - [VASP 5.4.1 compile](https://www5.hp-ez.com/hp/calculations/page232)