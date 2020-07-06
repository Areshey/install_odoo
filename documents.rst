Linux
Debian/Ubuntu

Odoo 11.0 ‘deb’ package currently supports Debian Stretch, Ubuntu Xenial, Ubuntu Zesty and Ubuntu Artful.
Prepare

Odoo needs a PostgreSQL server to run properly. The default configuration for the Odoo ‘deb’ package is to use the PostgreSQL server on the same host as your Odoo instance. Execute the following command as root in order to install PostgreSQL server :

# apt-get install postgresql -y

In order to print PDF reports, you must install wkhtmltopdf yourself: the version of wkhtmltopdf available in debian repositories does not support headers and footers so it can not be installed automatically. The recommended version is 0.12.1 and is available on the wkhtmltopdf download page, in the archive section.
Repository

Odoo S.A. provides a repository that can be used with Debian and Ubuntu distributions. It can be used to install Odoo Community Edition by executing the following commands as root:

# wget -O - https://nightly.odoo.com/odoo.key | apt-key add -
# echo "deb http://nightly.odoo.com/11.0/nightly/deb/ ./" >> /etc/apt/sources.list.d/odoo.list
# apt-get update && apt-get install odoo

You can then use the usual apt-get upgrade command to keep your installation up-to-date.

At this moment, there is no repository for the Enterprise Edition.
Deb Package

Instead of using the repository as described above, the ‘deb’ package can be downloaded here:

    Community Edition: nightly
    Enterprise Edition Download

You can then use gdebi:

# gdebi <path_to_installation_package>

Or dpkg (handles less dependencies automatically):

# dpkg -i <path_to_installation_package> # this probably fails with missing dependencies
# apt-get install -f # should install the missing dependencies
# dpkg -i <path_to_installation_package>

This will install Odoo as a service, create the necessary PostgreSQL user and automatically start the server.
Warning

The 3 following python packages are only suggested by the Debian package. Those packages are not available in Ubuntu Xenial (16.04).

    python3-vobject: Used in calendars to produce ical files.
    python3-pyldap: Used to authenticat users with LDAP.
    python3-qrcode: Used by the hardware driver for ESC/POS

If you need one or all of the packages mentioned in the above warning, you can install them manually. One way to do it, is simply using pip3 like this:

$ sudo pip3 install vobject qrcode
$ sudo apt install libldap2-dev libsasl2-dev
$ sudo pip3 install pyldap

Warning

Debian 9 and Ubuntu do not provide a package for the python module num2words. Textual amounts will not be rendered by Odoo and this could cause problems with the “l10n_mx_edi” module.

If you need this feature, you can install the python module like this:

$ sudo pip3 install num2words


