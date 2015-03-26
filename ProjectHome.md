I'm just in the beginning stages of learning how to program. There are heaps of creepy crawlies (bugs) and unfinished ideas (things that don't work, yet).

## News ##

**apt** development has moved to [OSGeo4W](http://trac.osgeo.org/osgeo4w/), _however_ I've also merged most of the changes back to [cyg-apt](http://code.google.com/p/maphew/source/browse/trunk/other/cyg-apt.py) which I'll continue to maintain here for now. Not sure how to handle this going forward yet. Perhaps make both a single program and change behaviour according to the name starting it? e.g. `cyg-apt` --> install cygwin, `o4w-apt` --> install osgeo4w. That would certainly be [DRY](http://c2.com/cgi/wiki?DontRepeatYourself)er.

  * apt.exe - standalone exe version of AptGetLike
    * [r1179](http://trac.osgeo.org/osgeo4w/log/trunk/apt/apt.py?rev=1179):
      * make "apt find" case insensitive
      * improve usage messages
      * small improvements to requires (dependency) reporting
      * upgrade build script to use current pyinstaller
      * report version number with help (close osgeo4w#236)
      * work on packaging and updating apt.exe in place
    * [r1170](http://trac.osgeo.org/osgeo4w/log/trunk/apt/apt.py?rev=1170):
      * close osgeo4w#209, error reading certain bzip2 tarfiles
      * closes osgeo4w#173, apt knows to get .bz2 ini instead
      * osgeo4w#136 apply depends in order and check for cyclic depends (from patch by jpalmer in osgeo4w#167)
      * allow user to customise the start menu name [osgeo4w#167](osgeo4w#167.md). From Jeremy Palmer, Land Information New Zealand
      * osgeo4w#158: stop infinite recursion by tightening string search to only match .py files under 'bin/'
      * osgeo4w#156 - spit out a more informative error when encountering an unexpected version number
      * new feature - records menu and desktop links created on install, and deletes when removing the package. (osgeo4w#52)
      * improve readability of determining which mirror to use (command, last used, or default) FIXME: there's a bug in here somewhere, save\_config(mirror) is not always triggered.
    * `r1131`:
      * much better package removal (though still misses .tmpl files in ./bin and start menu shortcuts)
      * new command "apt available" shows packages which could be installed (previously one had to know the name already)
      * download percentage counter no longer reports >100% recieved
      * "r###" in filename now reflects the revision number at [OSGeo4W svn](http://trac.osgeo.org/osgeo4w/browser/trunk/apt/)
    * [r60](https://code.google.com/p/maphew/source/detail?r=60):
      * fixed broken MD5 checksum
      * download progress as percent instead of never-ending dots
      * create root dir if not exist (still needs to be defined)
  * AptGetLike - an apt-get like utility for OSGeo4W
  * [Using Canvec](http://maphew.googlecode.com/svn/trunk/gis/canvec/)
  * [Update Yukon (and adjecent) National Road Network](http://maphew.googlecode.com/svn/trunk/gis/geobase/).

Also see the [arcmapbook project](http://code.google.com/p/arcmapbook/)