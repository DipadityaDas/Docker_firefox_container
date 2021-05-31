FROM  centos:latest

RUN	yum install firefox -y && \
	yum install net-tools && \
	yum install PackageKit-gtk3-module libcanberra-gtk2 -y

CMD  /usr/bin/firefox