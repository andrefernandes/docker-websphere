#!/bin/bash
/opt/IBM/WebSphere/AppServer/bin/startServer.sh server1
tail -f /opt/IBM/WebSphere/AppServer/profiles/AppSrv01/logs/server1/SystemOut.log

