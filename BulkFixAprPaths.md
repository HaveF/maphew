I fielded a question this morning about how to fix ArcView3 project files (.apr) when moving their source data around -- from `D:\GIS\Projects` --> `X:\GIS\Projects\2006`. In answering the question I rediscovered an old script from 2001 I wrote which recursively does this for all folders under the current one. As I'm about to move to a new computer and throw out or archive (nearly the same thing) my old stuff, yet this particular piece might still of use to someone, I figured I'd plunk it in my source code repository for future reference.

This is not something you can just download and run, but to use as an aid or template in building your own scripts.

Get the code here: http://code.google.com/p/maphew/source/browse/trunk/gis/recursive_apr_update/