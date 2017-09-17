
apt-get install libssh-dev
phpbrew install php-5.3.28 +default+fpm +openssl=shared -- --with-openssl-dir=/usr/bin/openssl
phpbrew install php-5.3.29 +default+fpm+iconv+curl+cgi +openssl=shared -- --with-openssl-dir=/usr/bin/openssl

#ERRORS
checking libxml2 install dir... no
checking for xml2-config path...
configure: error: xml2-config not found. Please check your libxml2 installation.
apt-get install libxml2-dev

checking for Kerberos support... no
checking for DSA_get_default_method in -lssl... no
checking for X509_free in -lcrypto... no
checking for pkg-config... /usr/bin/pkg-config
configure: error: Cannot find OpenSSL's <evp.h>
apt-get install libcurl4-openssl-dev pkg-config
apt-get install libssl-dev


checking if the location of ZLIB install directory is defined... no
checking whether to enable bc style precision math functions... yes
checking for BZip2 support... yes
checking for BZip2 in default path... not found
configure: error: Please reinstall the BZip2 distribution
apt-get install libbz2-dev

checking for cURL support... yes
checking if we should use cURL for url streams... no
checking for cURL in default path... not found
configure: error: Please reinstall the libcurl distribution -
    easy.h should be in <curl-dir>/include/curl/
apt-get install libcurl4-gnutls-dev
ln -s /usr/include/x86_64-linux-gnu/curl /usr/local/include/curl
    
checking for alloca... (cached) yes
checking for 8-bit clean memcmp... yes
checking for stdarg.h... (cached) yes
checking for mcrypt support... yes
configure: error: mcrypt.h not found. Please reinstall libmcrypt.
install libmcrypt-dev

checking for utsname.domainname... yes
checking for PSPELL support... no
checking for libedit readline replacement... no
checking for readline support... yes
configure: error: Please reinstall readline - I cannot find readline.h
apt-get install libreadline-dev

checking whether to enable XMLWriter support... yes
checking for xml2-config path... (cached) /usr/bin/xml2-config
checking whether libxml build works... (cached) yes
checking for XSL support... yes
configure: error: xslt-config not found. Please reinstall the libxslt >= 1.1.0 distribution
apt-get install libxslt-dev

checking for XSL support... yes
checking for EXSLT support... found
checking for zip archive read/writesupport... yes
checking pcre install prefix... no
checking for the location of zlib... configure: error: zip support requires ZLIB. Use --with-zlib-dir=<DIR> to specify prefix where ZLIB include and library are located
apt-get install zlib1g-dev






