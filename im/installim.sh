#!/bin/bash
echo "IBM IM install script"
# sets download root url
# this is somewhere in your LAN where you keep the IBM
# repository zip files
IMURL=http://172.17.42.1:8000/

# downloads IM setup zip file
wget $IMURL/agent.installer.linux.gtk.x86_64_1.6.2000.20130301_2248.zip -q -O /opt/im.zip
cd /opt
mkdir iminstall
unzip -q im.zip -d iminstall
rm im.zip
cd iminstall
ln -s jre_6.0.0.sr9_20110208_03/ jre
./installc --launcher.ini silent-install.ini -log /opt/logim.log -acceptLicense
cd /opt
rm -Rf iminstall/
rm -f logim.log

#./iminstall/tools/imcl -acceptLicense -showProgress input /home/core/was855/was85.rsp -log ./teste.log
