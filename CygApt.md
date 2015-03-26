# Introduction #

Working on AptGetLike I realized many of the changes I was making converting calls to tar, md5, etc. to pure python would also work on cyg-apt. So I've back ported those changes and have now successfully used the modified cyg-apt to install cygwin on a virgin system with nothing but windows cmd.exe and python available.

I anticipate the recipe for BuildAptExe will work for cyg-apt too, which means we can probably install cygwin from the command line on a windows machine fresh out of the box. :)

Still need to figure out what package(s) are used to create the Desktop and Start Menu shortcuts for a complete experience.

# Details #

1. Download [cyg-apt.py r90](http://code.google.com/p/maphew/source/browse/trunk/other/cyg-apt.py) or later.
2. Run cmd shell and:
```
set cygwin_root=C:\cygwin
python cyg-apt.py setup
python cyg-apt.py install cygwin coreutils
```
Results (edited for legibility):
```
> python cyg-apt.py setup

Root dir not found, creating /cygwin
creating /cygwin/etc/setup/
creating /cygwin/etc/setup//installed.db
getting /cygwin/etc/setup//setup.ini
getting /cygwin/etc/setup//setup.ini
...100%

> python cyg-apt.py install cygwin coreutils

Fetching http://mirror.cpsc.ucalgary.ca/mirror/cygwin.com//release/cygwin/cygwin-1.5.25-15.tar.bz2
...100%  D:/cygwin/var/cache/setup/http%3a%2f%2fmirror.cpsc.ucalgary.ca%2fmirror%2fcygwin.com%2f/release/cygwin/cygwin-1.5.25-15.tar.bz2

b72f64b6d7e68b57aa849371706d6062  cygwin-1.5.25-15.tar.bz2 - remote
b72f64b6d7e68b57aa849371706d6062  cygwin-1.5.25-15.tar.bz2 - local
installing cygwin 1.5.25-15

> d:\cygwin\usr\bin\bash

bash-3.2$ uname -a
MINGW32_NT-5.1 MY-LAPTOP 1.0.11(0.46/3/2) 2007-01-12 12:05 i686 Msys
```