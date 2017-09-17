
apt-get install libssh-dev
phpbrew install php-5.3.28 +default+fpm +openssl=shared -- --with-openssl-dir=/usr/bin/openssl

#ERRORS
checking libxml2 install dir... no
checking for xml2-config path...
configure: error: xml2-config not found. Please check your libxml2 installation.
apt-get install libxml2-dev

configure: error: Cannot find OpenSSL's <evp.h>
apt-get install libcurl4-openssl-dev pkg-config

