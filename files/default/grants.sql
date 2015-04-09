CREATE DATABASE docker_registry;
CREATE USER 'docker_registry'@'%' IDENTIFIED BY 'DD5664CB-7FEF-4618-BE23-4FC2A55CBF15';
GRANT ALL PRIVILEGES ON docker_registry.* TO 'docker_registry'@'%' WITH GRANT OPTION;
SHOW GRANTS FOR 'docker_registry'@'%';

CREATE DATABASE docker_registry;
CREATE TABLE docker_registry.version(id INT PRIMARY KEY);
CREATE TABLE docker_registry.repository(id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(95) NOT NULL UNIQUE, description VARCHAR(100));
