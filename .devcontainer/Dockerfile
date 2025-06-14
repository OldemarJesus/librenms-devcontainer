FROM mcr.microsoft.com/devcontainers/base:bookworm

# Packages required for librenms server
# https://docs.librenms.org/Installation/Install-LibreNMS/
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y lsb-release ca-certificates \
    wget acl curl fping git graphviz imagemagick \
    mariadb-client mariadb-server mtr-tiny \
    nginx-full nmap python3-dotenv python3-pymysql python3-redis \
    python3-setuptools python3-systemd python3-pip rrdtool \
    snmp snmpd unzip whois python3.11-venv

# Download and install LibreNMS
USER root
RUN mkdir -p /opt/python \
    && python3 -m venv /opt/python/ \
    && sed -i 's/false/true/g' /opt/python/pyvenv.cfg \
    && chown -R vscode:vscode /opt/python