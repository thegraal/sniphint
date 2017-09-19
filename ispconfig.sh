apt-get update
apt-get install htop mc sudo net-tools
apt-get install ntp ntpdate

cd /tmp
wget https://dev.mysql.com/get/mysql-apt-config_0.8.7-1_all.deb
dpkg -i mysql-apt-config_0.8.7-1_all.deb
apt-get update

apt-get install nginx 
#apt-get install apache2
apt-get install postfix postfix-mysql postfix-doc mysql-client mysql-server 
apt-get install php7.0-fpm php7.0-mysql php-amqp php-geoip php-imagick php-mailparse php-memcached php7.0-curl php7.0-gd php7.0-imap php7.0-mbstring php7.0-mysql php7.0-zip 
apt-get install fcgiwrap

#nano /etc/default/pure-ftpd-common
#[...]
#STANDALONE_OR_INETD=standalone
#[...]
#VIRTUALCHROOT=true
#[...]

#Edit /etc/fstab. Mine looks like this (I added ,usrjquota=quota.user,grpjquota=quota.group,jqfmt=vfsv0 to the partition with the mount point /
#nano /etc/fstab
#mount -o remount /
#quotacheck -avugm
#quotaon -avug


#jailkit
apt-get install build-essential autoconf automake libtool flex bison debhelper binutils

cd /tmp
wget http://olivier.sessink.nl/jailkit/jailkit-2.19.tar.gz
tar xvfz jailkit-2.19.tar.gz
cd jailkit-2.19
echo 5 > debian/compat
./debian/rules binary

cd ..
dpkg -i jailkit_2.19-1_*.deb
rm -rf jailkit-2.19*
#/jailkit

apt-get install fail2ban
apt-get install ufw


##########
#Wrong SQL-mode. You should use NO_ENGINE_SUBSTITUTION. Add
#
#    sql-mode="NO_ENGINE_SUBSTITUTION"
#
#to the mysqld-section in your mysql-config on this server and restart mysqld afterwards

cd /tmp
wget http://www.ispconfig.org/downloads/ISPConfig-3-stable.tar.gz
tar xfz ISPConfig-3-stable.tar.gz
cd ispconfig3_install/install/

php -q install.php


apt-get install libz-dev
