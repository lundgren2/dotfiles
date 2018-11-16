# Setup Local Apache Server

```sh
sudo nano /etc/apache2/httpd.conf
```

**Uncomment these modules (the first 2 should already be on a clean install):**

```
LoadModule authz_core_module libexec/apache2/mod_authz_core.so
LoadModule authz_host_module libexec/apache2/mod_authz_host.so

LoadModule userdir_module libexec/apache2/mod_userdir.so
LoadModule include_module libexec/apache2/mod_include.so
LoadModule rewrite_module libexec/apache2/mod_rewrite.so
LoadModule php5_module libexec/apache2/libphp5.so

Include /private/etc/apache2/extra/httpd-userdir.conf

# replace:
DocumentRoot "/Library/WebServer/Documents"
<Directory "/Library/WebServer/Documents">

# with:
DocumentRoot "/Users/tobiaslundgren/Sites"
<Directory "/Users/tobiaslundgren/Sites">

# maybe run:
sudo chmod -R g+w ~/Sites
 sudo chown -R _www ~/Sites/

```

### Setup custom document root

```
sudo nano /etc/apache2/extra/httpd-userdir.conf


# Either use the default directory by uncomment this line:
Include /private/etc/apache2/users/*.conf

# or use your own to sync between your machines in ex. dropbox:
Include /Users/tobiaslundgren/Dropbox/Symlinks/tobiaslundgren.conf
```

**Create a tobiaslundgren.conf file in it and add:**

```sh
<Directory "/Users/tobiaslundgren/Sites/">
AllowOverride All
Options Indexes MultiViews FollowSymLinks
Require all granted
</Directory>

```

**Insert this to create new virtual host for localhost and ex. a home directory: (have to be added for each virtual host)**

```
<VirtualHost *:80>
    DocumentRoot "/Users/tobiaslundgren/Sites/"
    ServerName localhost
</VirtualHost>

<VirtualHost *:80>
    DocumentRoot "/Users/tobiaslundgren/Sites/home"
    ServerName home.dev
</VirtualHost>
```

Add this line to your /etc/hosts file: (have to be added for each virtual host)

```
127.0.0.1 home.dev
```

Restart apache to load the new settings

```
sudo apachectl restart
```

### MariaDB (Great for local MySQL databases)

```sh
brew install mariadb

mysql.server start

#To auto-start MariaDB Server, use Homebrew's services functionality, which integrates with macOS launchctl:
brew services start mariadb

#SECURE MYSQL: remove default acc and set usr: root pw: **SECURE**
sudo mysql_secure_installation
mysql -uroot -p
**SECURE**
```
