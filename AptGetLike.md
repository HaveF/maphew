# Introduction #

[apt.py](http://code.google.com/p/maphew/source/browse/trunk/gis/o4w_extras/bin/apt.py) is a program for installing modules from the command line within an OSGeo4W shell. (See [downloads](http://code.google.com/p/maphew/downloads/list) for a standalone exe.)

It is based on 'cyg-apt' by Jan Nieuwenhuizen. The main changes are to using pure python instead of system calls for `rm, mv, gzip, tar, md5sum`. The only wholly new function is to automatically run the postinstall/**.bat files.**

Other than changing the default mirror and some osgeo specific variables near the top, I think most of this could be ported back to cyg-apt without trouble.

## Getting Started ##

If you don't have OSGeo4W at all, see OsgeoFromScratch. If you do, download apt.py and apt.bat to osgeo4w\bin, run `apt setup` from an osgeo4w shell and then carry on like below.

Start a command shell and
```
D:\> set osgeo4w_root=C:\OSGeo4W
D:\> apt setup
```

## Daily Usage ##

```
d:\> apt update
. . . . .

d:\> apt new
gdal                1.5.2-2
gdal-ecw            1.5.2-2
java                1.6.0._.5-2
msvcrt              1.0.0-6
ogdi                3.2.0.b.1-4
openev              1.9.0-3
proj                4.6.0-3

d:\> apt install proj
. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . C:/OSGeo4W/var/cache/setup/http%3a%2f%2fdo
wnload.osgeo.org%2fosgeo4w/./release/proj/proj-4.6.0-3.tar.bz2

76d10d9bbe120ef44554fb57623d288c  proj-4.6.0-3.tar.bz2
76d10d9bbe120ef44554fb57623d288c  proj-4.6.0-3.tar.bz2

preparing to replace proj 4.6.0-2
installing proj 4.6.0-3

d:\>
```


## Known Problems ##

I'm not a developer. This is the most significant python project I've ever undertaken and **without doubt there are problems**. Still, it seems to work for me on my computer. I don't know what it might do to anyone elses.