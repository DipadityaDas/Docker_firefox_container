FROM  centos:latest

RUN dbus-uuidgen > /etc/machine-id

RUN	yum install firefox -y && \
	yum install net-tools && \
	yum install PackageKit-gtk3-module libcanberra-gtk2 -y

CMD  /usr/bin/firefox