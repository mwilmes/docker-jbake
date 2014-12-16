FROM centos

RUN yum -y install java unzip && yum clean all

ADD http://jbake.org/files/jbake-2.3.2-bin.zip /opt/jbake.zip

RUN cd /opt && unzip -o jbake.zip
RUN cd /opt && mv jbake-2.3.2 jbake
RUN cd /opt && rm jbake.zip
