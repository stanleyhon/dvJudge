# dvJudge
UNSW comp4920 Major Project "D[tbd] V[tbd] online Judge"

## Developer Setup
  - Install Flask with ```pip install flask```
  - Install sqlite3 with ```sudo apt-get install sqlite3```
  - Pull the code from git
  - run `python dvjudge/deploy.py` to setup the database on your machine
  - run `python runserver.py` to start the webserver
  - Navigate to http://localhost:5000

## Production Setup
  - Install git
  - Install python-setuptools
  - Install apache2
  - Install mod_wsgi (libapache2-mod-wsgi)
  - easy_install flask (to install flask)
  - Add a wsgi file to /var/www/dvjudge/dvjudge.wsgi as follows:
```
import sys, os
sys.path.insert(0, '/var/www/dvjudge/dvJudge')
os.chdir('/var/www/dvjudge/dvJudge')
from dvjudge import app as application
```
  - Add a virtualhost entry for dvjudge using the configuration as follows (modify for needs):
```
<VirtualHost *>
    ServerName stanleyhon.cloudapp.net

    WSGIDaemonProcess dvjudge user=azureuser group=azureuser threads=5
    WSGIScriptAlias / /var/www/dvjudge/dvjudge.wsgi

    <Directory /var/www/dvjudge>
        WSGIProcessGroup dvjudge 
        WSGIApplicationGroup %{GLOBAL}
        Order deny,allow
        Allow from all
    </Directory>
</VirtualHost>

# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
```
  - cd to /var/www/dvjudge and run git clone on this repo
  - Modify /dvjudge/settings.cfg as follows:
```
# Configuration settings of the virtual judge server environment.
DATABASE = '/dvjudge.db'
DEBUG = False
SECRET_KEY = '<get some key from random.org>'
```
  - Setup the DB by running deploy.py and check that you have write privileges to the database
  - Restart apache2
  - Navigate to your URL to check it works.
  - Install debootstrap
  ```
  sudo apt-get update
  sudo apt-get install dchroot debootstrap
  ```
  - Create jail folder
  ```
  sudo mkdir /jail
  ```
  - Create configuration options
  ```
  sudo nano /etc/schroot/schroot.conf
  ```
  - Add the following lines, modifying for your server
  ```
  [trusty]
  description=Ubuntu Trusty
  location=/jail
  priority=3
  users=demouser
  groups=sbuild
  root-groups=root
  
  ```
- Now setup the jail so that submissions work
- Populate the chroot environment with a skeleton operating system
```
sudo debootstrap --variant=buildd --arch amd64 trusty /jail/ http://mirror.cc.columbia.edu/pub/linux/ubuntu/archive/
```
- Make sure our host fstab is aware of some pseudo-systems in our guest. Add lines like these to the bottom of your fstab
```
sudo nano /etc/fstab
proc /jail/proc proc defaults 0 0
sysfs /jail/sys sysfs defaults 0 0
```
- Mount these filesystems within our guest
```
sudo mount proc /jail/proc -t proc
sudo mount sysfs /jail/sys -t sysfs
```
- Chroot into the jail and install necessery compilers and interpreters
```
sudo chroot /jail/ /bin/bash
apt-get install python
apt-get install default-jre
apt-get install default-jdk
```
- Add a new user to jail which will run the submissions ```adduser dvj ``` 
-  Install iptables by runnning ```apt-get install iptables```
-  Add rule to iptable to disable all outgoing internet activity for the group the dvj group ```iptables -A OUTPUT -m owner --gid-owner dvj -j DROP ```
-  Modify passwords of the default accounts by using sqlite3 to directly modify the DB, passwords are ```SHA512(<PLAINTEXT>+<SALT>)```. Salt is stored in the database.
```
sqlite3 /database/dvjudge.db
update users set salt="<NEWSALT>" where id=1 or id=2 or id=3 or id=4;
update users set password="<NEW HASHED PASSWORD>" where id=1 or id=2 or id=3 or id=4;
```

##Project Details
[Google Drive](https://drive.google.com/drive/folders/0BxD6wDvDG5hRfklTaUxrM0VNV2pqcm9sazFiNjhHQ3paSHRNN3JnODlLazU2d3B1Yjh6WDA)  
[Jira](https://dvjudge.atlassian.net/projects/DVJ/summary)

##Resources
[SQLite3 Tutorial](http://www.tutorialspoint.com/sqlite/index.htm)  
[Git Tutorial](https://www.atlassian.com/git/)  
[Flask Documentation (including tutorial)](http://flask.pocoo.org/docs/0.10/)  
[Jinja Documentation](http://jinja.pocoo.org/docs/dev/templates/)  
[Bootstrap Documentation](http://getbootstrap.com/css/)  

##Idea
An online judge for completing c++ coding challenges. Users can browse coding challenges and attempt questions by uploading their code through the website and the judge will judge their resutls and tell them whether they have passed

##Potential Future Additions:
1. Virtual Hosting - connecting to other OJ and distributing their competitions
2. Content discovery based on community rating
3. "Playlists" for personal/teaching purposes
4. Competition hosting
5. Including additional languages such as Java

##Roles
#####Brady

######Google Drive Owner  
  * Admininister files on Google Drive  

######Test Owner  
  * Set up automated testing on Jira
  * Manage peoples testing
  * Set up continous integration testing

######Database Owner
  * Admin DB
	
#####Stanley	
######Jira Owner
  * Jira Admin
  * Manage Jira including addons, tasks and angile tracking  

######Github Owner
  * do github things
	
#####Stannis	
######Website Design
  * designe website skeleton to be used as website template
  * ensure all website elements integrate effectively
	
#####Tara	
######Epics Owner
  * Writing the epics and ensuring all the User Stories match to them correctly
  * Assigning stories to epics
  * Assigning stories to people
  * Assigning stories to sprints
	
#####Daniel	
######Project Plan Owner
  * Ensuring the project plan is complete
  * Distributing each part of the project plan
  * Final document checking
