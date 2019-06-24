For CentOS 6:
===========================================================================================================================================
Stop MySQL service:
# service mysqld stop
Back up MySQL databases:
# mkdir /var/lib/mysqlcopy
# cp -aR /var/lib/mysql/* /var/lib/mysqlcopy
Disable Atomic repository, if it is enabled:
# vi /etc/yum.repos.d/atomic.repo
      enabled = 0

Install MySQL-community repository:
# yum install http://dev.mysql.com/get/mysql57-community-release-el6-7.noarch.rpm

Disable upgrade to MySQL 5.7, enable upgrade to MySQL 5.6:
# vi /etc/yum.repos.d/mysql-community.repo
      [mysql56-community]
      enabled=1
      [mysql57-community]
      enabled=0

Install MySQL packages:

# yum install mysql

Start MySQL service:

# service mysqld start

Upgrade MySQL databases:

# MYSQL_PWD=`cat /etc/psa/.psa.shadow` mysql_upgrade -uadmin psa
===========================================================================================================================================
