CREATE DATABASE IF NOT EXISTS librenms CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS 'librenms'@'%' IDENTIFIED BY 'mysecretpassword';
GRANT ALL PRIVILEGES ON librenms.* TO 'librenms'@'%';