Prerequisites

<pre>
apt-get install build-essential
apt-get install libncurses5-dev libncursesw5-dev libreadline6-dev
apt-get install libdb5.1-dev libgdbm-dev libsqlite3-dev libssl-dev
apt-get install libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev
</pre>

Installation: Python 3.x.x

<pre>
cd /tmp
tar -zxf /path/to/your/Python-3.x.x.tgz
cd Python-3.x.x
./configure --prefix=/usr/local/opt/python-3.x.x
make
sudo make install
cd /tmp
sudo rm -rf Python-3.x.x
</pre>


If no PIP:
<pre>
easy_install pip
</pre>
