FROM  centos:latest

RUN dbus-uuidgen > /etc/machine-id

RUN yum install -y glibc-locale-source && \
	localedef --no-archive -i en_US -f UTF-8 en_US.UTF-8 && \
	export LANG=en_US.UTF-8

RUN	yum install firefox -y && \
	yum install net-tools && \
	yum install PackageKit-gtk3-module libcanberra-gtk2 -y

CMD  /usr/bin/firefox