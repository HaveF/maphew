Download OSGeo4W [apt-rxx.exe](http://code.google.com/p/maphew/downloads/list), if you like rename to apt
Open a CMD shell and:
```
SET OSGEO4W_ROOT=C:\Osgeo4W
apt setup
apt update
apt install shell
```

## Results ##
><b>set osgeo4w_root=d:\test-osgeo4w</b><br>
><b>apt setup</b><br>
Root dir not found, creating d:/test-osgeo4w<br>
creating d:/test-osgeo4w/etc/setup/<br>
creating d:/test-osgeo4w/etc/setup//installed.db<br>
getting d:/test-osgeo4w/etc/setup//setup.ini<br>
...100%<br>
><b>apt install shell</b><br>
to install:<br>
<blockquote>shell msvcrt<br>
Fetching <a href='http://download.osgeo.org/osgeo4w/./release/shell/shell-1.0.0-5.tar.bz2'>http://download.osgeo.org/osgeo4w/./release/shell/shell-1.0.0-5.tar.bz2</a><br>
<br>
...100%  d:/test-osgeo4w/var/cache/setup/http%3a%2f%2fdownload.osgeo.org%2fosgeo4w/./release/shell/shell-1.0.0-5.tar.bz2<br>
<br>
a01e6dcdc9e2d2c49424585aa3e1b44f  shell-1.0.0-5.tar.bz2 - remote<br>
a01e6dcdc9e2d2c49424585aa3e1b44f  shell-1.0.0-5.tar.bz2 - local<br>
<br>
Fetching <a href='http://download.osgeo.org/osgeo4w/./release/msvcrt/msvcrt-1.0.1-2.tar.bz2'>http://download.osgeo.org/osgeo4w/./release/msvcrt/msvcrt-1.0.1-2.tar.bz2</a><br>
...100%  d:/test-osgeo4w/var/cache/setup/http%3a%2f%2fdownload.osgeo.org%2fosgeo4w/./release/msvcrt/msvcrt-1.0.1-2.tar.bz2<br>
<br>
195c192b98b7333e2d3f9e04717c2eb5  msvcrt-1.0.1-2.tar.bz2 - remote<br>
195c192b98b7333e2d3f9e04717c2eb5  msvcrt-1.0.1-2.tar.bz2 - local<br>
installing shell 1.0.0-5<br>
<br>
>mkdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\OSGeo4W"<br>
>xxmklink "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\OSGeo4W\OSGeo4W.lnk" "d:\test-osgeo4w\OSGeo4W.bat" " " \ "OSGeo for Windows command shell" 1 "d:\test-osgeo4w\OSGeo4W.ico<br>
>xxmklink "C:\ProgramData\Desktop\OSGeo4W.lnk" "d:\test-osgeo4w\OSGeo4W.bat" " " \ "OSGeo for Windows command shell" 1 "d:\test-osgeo4w\OSGeo4W.ico<br>
Post_install complete, return code 0<br>
installing msvcrt 1.0.1-2<br>
<br>
>"d:\test-osgeo4w\bin\vcredist_x86.exe" /q<br>
>del "d:\test-osgeo4w\bin\vcredist_x86.exe"<br>
>textreplace -std -t bin/o4w_env.bat<br>
Post_install complete, return code 0<br>
<br>
><b>apt list</b><br>
msvcrt              1.0.1-2<br>
shell               1.0.0-5<br>
<hr /></blockquote>

Shell is only a skeleton, there are no applications installed. So to get something actually useful:<br>
<pre><code>&gt;apt available<br>
<br>
 Packages available to install (* = already installed)<br>
<br>
agg-devel                       mapscript-dev-python<br>
apache                          mapscript-java<br>
apache-manual                   mapscript-python<br>
...snipped &gt;140 package names...<br>
libxdr                          xerces-c<br>
libxml2                         xerces-c-devel<br>
mapfish_framework               zlib<br>
<br>
&gt;apt install gdal<br>
...snip...<br>
<br>
&gt;gdalinfo --version<br>
GDAL 1.5.4, released 2009/01/07<br>
</code></pre>