# CentOS 7 + IBM IM + WebSphere Application Server for Developers v8.5.5.3

FROM andrefernandes/docker-ibmim

MAINTAINER Andre Fernandes

ADD installwas.sh /opt/installwas.sh
ADD was85.rsp /opt/was85.rsp

RUN /opt/installwas.sh

ADD startserver.sh /opt/startserver.sh

EXPOSE 9080
EXPOSE 9060
EXPOSE 9443
EXPOSE 2809

CMD ["/opt/startserver.sh"]

