# CentOS 7 + IBM Installation Manager

FROM andrefernandes/docker-centos7-base

MAINTAINER Andre Fernandes

ADD installim.sh /opt/installim.sh

RUN /opt/installim.sh

CMD ["/opt/IBM/InstallationManager/eclipse/tools/imcl","-c"]

