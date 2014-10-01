# CentOS 7 + IBM IM + WebSphere Application Server for Developers v8.5.5.3

FROM andrefernandes/docker-ibmim

MAINTAINER Andre Fernandes

ADD installwas.sh /opt/installwas.sh
ADD was85.rsp /opt/was85.rsp

RUN /opt/installwas.sh

#CMD ["/opt/IBM/InstallationManager/eclipse/tools/imcl","-c"]

