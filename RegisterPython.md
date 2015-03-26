It can be helpful sometimes to register the gdal version of python with Windows. This way a) .py files can be run from outside the o4w shell, and b) 3rd party python programs which aren't part of the o4w package system can be installed using traditional python installers and eggs. -- http://trac.osgeo.org/osgeo4w/ticket/114

I'm working on [register-python.py here](http://code.google.com/p/maphew/source/browse/trunk/gis/o4w_extras/register-python.py). After it's reached a certain level of maturity it will be made into an o4w package (or more likely combined with another one; it _is_ a small project).

Based on a script to register Python 2.0 or later for use with win32all and other extensions that require Python registry settings written by Joakim Löw for Secret Labs AB / PythonWare.

Sources:
  * http://www.pythonware.com/products/works/articles/regpy20.htm
  * http://effbot.org/zone/python-register.htm
  * http://timgolden.me.uk/python-on-windows/programming-areas/registry.html

### Known problems ###

It doesn't detect existing python registrations on 64bit machines. Info on why that happens and a pointer to a possible solution [here](http://www.mail-archive.com/python-list@python.org/msg266397.html).