# We are going to use the Latest version of Centos
FROM  centos:latest

# Generating a universally unique ID for the Container 
CMD dbus-uuidgen > /etc/machine-id

# Installing the sources for the locales
RUN yum install -y glibc-locale-source

# Setting up the default locale to en_US.UTF-8 	
CMD localedef --no-archive -i en_US -f UTF-8 en_US.UTF-8 && \
	export LANG=en_US.UTF-8

# Installing Necessary packages including firefox
RUN yum install -y dbus-x11 PackageKit-gtk3-module libcanberra-gtk2 firefox

CMD  ['/usr/bin/firefox']