docker-websphere
================

CentOS 7 + WebSphere Application Server (full profile)

Scripts and Dockerfiles to generate:

* Docker image with IBM Installation Manager
* Docker image with IBM WebSphere Application Server for Developers v8.5.5.3

All install scripts assume that IBM repo files are available via HTTP (you
are supposed to change URLs, of course). Download these files from IBM and
unzip them some place where a HTTP server can grab them.

The repo files downloaded by the script are (as of this moment):

* agent.installer.linux.gtk.x86_64_1.6.2000.20130301_2248.zip (IBM IM install)
* was.repo.8550.developers.ilan_part1.zip
* was.repo.8550.developers.ilan_part2.zip
* was.repo.8550.developers.ilan_part3.zip
* 8.5.5-WS-WAS-FP0000003-part1.zip
* 8.5.5-WS-WAS-FP0000003-part2.zip

The Dockerfiles unpack and install their contents using IBM Installation
Manager (they also install IBM Installation Manager, duh).

By the end of it you'll have an 1.6G image with a base WAS 8.5.5.3 installed
and a default profile "AppSrv01".

