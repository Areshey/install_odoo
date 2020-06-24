#!/bin/bash
################################################################################
# how to run the install_odoo_file.sh in Ubuntu Operating System
#Installation steps
#1. Download the script:
#2. Change the file permission to allow execute it
#sudo chmod +x odoo_install.sh
#3. Run the script as supersuer:
#sudo ./odoo_install.sh
################################################################################

echo "Step 1: "
sudo apt-get update

echo "Step 1: "
sudo adduser --system --home=/opt/odoo --group odoo
echo "Step 1: "
sudo apt-get install -y postgresql
sudo service postgresql start
sudo su - postgres
createuser --createdb --username postgres --no-createrole --no-superuser --pwprompt odoo
exit
sudo service postgresql restart
echo "Step 1: "
sudo apt-get install -y python3-pip
sudo pip3 install Babel decorator docutils ebaysdk feedparser gevent greenlet html2text Jinja2 lxml Mako MarkupSafe mock num2words ofxparse passlib Pillow psutil psycogreen psycopg2 pydot pyparsing PyPDF2 pyserial python-dateutil python-openid pytz pyusb PyYAML qrcode reportlab requests six suds-jurko vatnumber vobject Werkzeug XlsxWriter xlwt xlrd
sudo apt-get install -y npm
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo npm install -g less less-plugin-clean-css
sudo apt-get install -y node-less 
echo "Step 1: "
sudo apt-get install -y git
sudo su - odoo -s /bin/bash
git clone https://www.github.com/odoo/odoo --depth 1 --branch 11.0 --single-branch .
exit
echo "Step 1: "
sudo vim /etc/odoo-server.conf
A sample configuration file is as like this:
==============================
[options]
; This is the password that allows database operations:
; admin_passwd = admin
db_host = False
db_port = False
db_user = odoo
db_password = False
logfile = /var/log/odoo/odoo-server.log
addons_path = /opt/odoo/addons,/opt/odoo/odoo/addons
============================

echo "Step 1: "
sudo chown odoo: /etc/odoo-server.conf
sudo chmod 640 /etc/odoo-server.conf
sudo mkdir /var/log/odoo
sudo chown odoo:root /var/log/odoo
echo "Step 1: "
sudo vim /etc/init.d/odoo-server
sudo chmod 755 /etc/init.d/odoo-server
sudo chown root: /etc/init.d/odoo-server
echo "Step 1: "
sudo /etc/init.d/odoo-server start
sudo /etc/init.d/odoo-server stop
tailf /var/log/odoo/odoo-server.log
update-rc.d odoo-server defaults
/opt/odoo/odoo-bin
echo "Step 1: "
sudo wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.1/wkhtmltox-0.12.1_linux-trusty-amd64.deb
sudo dpkg -i wkhtmltox-0.12.1_linux-trusty-amd64.deb
sudo cp /usr/local/bin/wkhtmltopdf /usr/bin
sudo cp /usr/local/bin/wkhtmltoimage /usr/bin

