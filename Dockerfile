FROM debian:stretch
RUN apt-get update && apt-get install -y mariadb-server
RUN service mysql start && echo "GRANT ALL PRIVILEGES ON *.* TO 'dbmate'@'%' IDENTIFIED BY 'dbmate';" | mysql

EXPOSE 3306
CMD mysqld --bind-address 0.0.0.0
