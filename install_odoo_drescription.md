# Description for install odoo into Ubuntu Operating System

### Step1 update the system 

```echo "update the system: "```
```sudo apt-get update```



### Step2  add odoo user to system system 

```echo "add odoo user to system system "```
```sudo adduser --system --home=/opt/odoo --group odoo```

### Step3 install requirement packages  

    echo "install requirement packages   "
    sudo apt-get install -y postgresql
    sudo service postgresql start
    sudo su - postgres
    createuser --createdb --username postgres --no-createrole --no-superuser --pwprompt odoo
    exit
    sudo service postgresql restart

echo "install  python3 requirement packages"

    sudo apt-get install -y python3-pip
    sudo pip3 install Babel decorator docutils ebaysdk feedparser gevent greenlet html2text Jinja2 lxml Mako MarkupSafe mock num2words ofxparse passlib Pillow psutil psycogreen psycopg2 pydot pyparsing PyPDF2 pyserial python-dateutil python-openid pytz pyusb PyYAML qrcode reportlab requests six suds-jurko vatnumber vobject Werkzeug XlsxWriter xlwt xlrd

    echo "npm is a package manager for the JavaScript programming language."

 [npm-install](https://docs.npmjs.com/cli/install.html)
        sudo apt-get install -y npm
        sudo ln -s /usr/bin/nodejs /usr/bin/node
        
[install less, less-plugin-clean-css](https://github.com/less/less-plugin-clean-css)

        sudo npm install -g less less-plugin-clean-css
        sudo apt-get install -y node-less 

[install git](https://git-scm.com/download/linux)


    sudo apt-get install -y git
    sudo su - odoo -s /bin/bash
    
[install odoo 11](https://github.com/odoo/odoo)
    
    git clone https://www.github.com/odoo/odoo --depth 1 --branch 11.0 --single-branch . 
    exit
    echo "add configartion to file "
    sudo vim /etc/odoo-server.conf

### A sample configuration file is as like this:

    ==============================
    [options]
    ; This is the password that allows database operations:
    ; admin_passwd = admin
    db_host = False
    db_port = False
    db_user = odoo
    db_password = False
    logfile = /var/log/odoo/odoo-server.log
    ==============================
    
#### addons_path = /opt/odoo/addons,/opt/odoo/odoo/addons
============================

   

    echo "change permission "
    sudo chown odoo: /etc/odoo-server.conf
    sudo chmod 640 /etc/odoo-server.conf
    sudo mkdir /var/log/odoo
    sudo chown odoo:root /var/log/odoo
    
### change permission to odoo server

    echo "change permission to odoo server"
    sudo vim /etc/init.d/odoo-server
    sudo chmod 755 /etc/init.d/odoo-server
    sudo chown root: /etc/init.d/odoo-server

### start or stop the odoo server command lines

    echo "start or stop the odoo server command lines "
    sudo /etc/init.d/odoo-server start
    sudo /etc/init.d/odoo-server stop
    tailf /var/log/odoo/odoo-server.log
    update-rc.d odoo-server defaults
    /opt/odoo/odoo-bin

### install wkhtmltopdf library 
[install wkhtmltopdf](https://wkhtmltopdf.org/)

    

    sudo wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.1/wkhtmltox-0.12.1_linux-trusty-amd64.deb
    sudo dpkg -i wkhtmltox-0.12.1_linux-trusty-amd64.deb
    sudo cp /usr/local/bin/wkhtmltopdf /usr/bin
    sudo cp /usr/local/bin/wkhtmltoimage /usr/bin




