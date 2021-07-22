DROP DATABASE IF EXISTS `isucon2021_prior`;
CREATE DATABASE IF NOT EXISTS `isucon2021_prior` DEFAULT CHARACTER SET utf8mb4;
CREATE USER IF NOT EXISTS `isucon`@`ip-172-31-%-%.ap-northeast-1.compute.internal` IDENTIFIED WITH mysql_native_password BY 'isucon';
GRANT ALL ON `isucon2021_prior`.* TO `isucon`@`ip-172-31-%-%.ap-northeast-1.compute.internal`;

set global slow_query_log = 1;
set global slow_query_log_file = '/var/log/mysql/slow.log';
set global long_query_time = 1;
set global log_queries_not_using_indexes = 1;
