# Retrieve details of Active Directory group members #

We periodically need to review our list of GIS users and make sure: a) every one who is supposed to be on the list is on the list, b) those who've moved on are removed. To do this we need to know:

  * Username (login name)
  * Name
  * Email address
  * Job Title
  * Branch / Office
  * Physical Location

I've not been able to find a single tool that can get this information for us in a usable format like .csv that doesn't cost a lot of money, or is full of other stuff I don’t need or can't use. (Most of them, understandably, are written for domain administrators and assume a knowledge of Active Directory and permissions I don't have.)

In the past I've cobbled together a few different methods of doing this with command line utilities such as `adfind`, `dsget`, and `net group`. While this worked, it always involved a lot of time manual parsing  the resulting text files to make them amenable to Excel (and hours reading documentation to try and understand how to use the tool properly).

Being annoyed with this I decided to try and build my own solution using python. Lo and behold, it's successful! At it only took 2 hours to boot! (Initial working implementation that is, a couple more to clean up and make suitable for sharing.)

It could use a little more work, but even so it in it’s present form _it get's the job done_. :) I think maybe I'm finally starting to understand some of this programming thang. :)

## Details ##

For each member of active directory group report common properties such as Name, Username, Email, Title,...

Usage:
```
    D:\> python show_ad_group_members.py ENV-GIS

    #--- ENV-GIS
    "Name", "Username", "Email", "Title", "Department", "Location"
    "Matt Wilkie", "mhwilkie", "Matt.Wilkie@gov.yk.ca", "Geomatics Analyst", "Environment", "10 Burns Rd."
    ...etc.
```
Redirect to a CSV file:
```
    D:\> python show_ad_group_members.py ENV-GIS > env-gis_members.csv
    D:\> start env-gis_members.csv
```
Double quote a group name with spaces:
```
    D:\> python show_ad_group_members.py "SDE - distribution list"
```

Tested with Python 2.6 on Windows 7. <br>
Requires active_directory.py from Tim Golden<br>
(<a href='http://timgolden.me.uk/python/active_directory.html'>http://timgolden.me.uk/python/active_directory.html</a>)<br>
<br>
Author: matt.wilkie@gov.yk.ca  <br>
(c) 2012 Environment Yukon  <br>
Licensed under the MIT license: <a href='http://www.opensource.org/licenses/MIT'>http://www.opensource.org/licenses/MIT</a>