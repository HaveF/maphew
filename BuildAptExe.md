Note: Recipe is implemented as `BuildAptExe.bat` and `TestAptExe.bat` [here](http://code.google.com/p/maphew/source/browse/trunk/gis/o4w_extras/bin/)

## Requirements ##

  * Python 2.5 - I'm using the version of python installed with o4w
  * [Pyinstaller](http://pyinstaller.python-hosting.com/) from svn - tested with [revision 528](https://code.google.com/p/maphew/source/detail?r=528).
  * [UPX](http://upx.sourceforge.net/) - executable packer, optional: only makes apt.exe about 2% smaller.

Pyinstaller mod: remove the print statments in lines 157, 367, 466 of iu.py (c.f. http://groups.google.com/group/PyInstaller/msg/76a5ffbe104c1a44). _No longer necessary (as of svn-[r716](https://code.google.com/p/maphew/source/detail?r=716))._

## Process ##
open o4w shell
```
cd pyinstaller
python Configure.py
```
...complains about missing win32api, important? I think it's only needed to set the exe version number and icon for Windows Explorer. Also complaints about not being able to determine windows system directories appear to be harmless (for this project).

replace 'r###' with current apt.py version number (currently o4w svn rev#).
```
set .rev=r1131
python Makespec.py --onefile --out=.\apt-%.rev% b:\o4w\apt\apt.py
python Build.py .\apt-%.rev%\apt.spec
move .\apt-%.rev%\dist\apt.exe .\apt-%.rev%\dist\apt-%.rev%.exe 
```

## Test ##
Open command shell without python in path or environment.
```
set .rev=r1131
set path=.
cd .\apt-%.rev%\dist\
set osgeo4w_root=%temp%\apt-%.rev%
apt-%.rev%.exe setup
apt-%.rev%.exe update
apt-%.rev%.exe install msvcrt
apt-%.rev%.exe list
apt-%.rev%.exe remove msvcrt
```