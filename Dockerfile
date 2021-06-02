FROM  centos:latest

RUN dbus-uuidgen > /etc/machine-id

RUN yum install -y glibc-locale-source && \
	localedef --no-archive -i en_US -f UTF-8 en_US.UTF-8 && \
	export LANG=en_US.UTF-8

RUN yum install -y dbus-x11 PackageKit-gtk3-module libcanberra-gtk2 firefox

RUN	yum install firefox -y && \
	yum

CMD  /usr/bin/firefox