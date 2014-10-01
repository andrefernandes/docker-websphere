#!/bin/bash
echo "IBM WAS855 install script"
# sets download root url
# this is somewhere in your LAN where you keep the IBM
# repository zip files
WASURL=http://172.17.42.1:8000/

# downloads IM setup zip file
echo "Downloading was repo base files..."
wget $WASURL/was.repo.8550.developers.ilan_part1.zip -q -O /opt/was1.zip
wget $WASURL/was.repo.8550.developers.ilan_part2.zip -q -O /opt/was2.zip
wget $WASURL/was.repo.8550.developers.ilan_part3.zip -q -O /opt/was3.zip
echo "Downloading was fp3 repo files..."
wget $WASURL/8.5.5-WS-WAS-FP0000003-part1.zip -q -O /opt/wasfp3_1.zip
wget $WASURL/8.5.5-WS-WAS-FP0000003-part2.zip -q -O /opt/wasfp3_2.zip
cd /opt
# was 8550 base files
mkdir was8550repo
echo "Unpacking base files..."
unzip -q was1.zip -d was8550repo
unzip -q was2.zip -d was8550repo
unzip -q was3.zip -d was8550repo
rm was1.zip was2.zip was3.zip
# was 855 fp 3
mkdir was8553repo
echo "Unpacking fp3 files..."
unzip -q wasfp3_1.zip -d was8553repo
unzip -q wasfp3_2.zip -d was8553repo
echo "Removing zip files..."
rm was*.zip
echo "Installing WAS 8.5.5.3..."
/opt/IBM/InstallationManager/eclipse/tools/imcl -acceptLicense -showProgress input /opt/was85.rsp -log /opt/logwas.log
echo "Removing repos..."
rm -Rf was8550repo was8553repo

