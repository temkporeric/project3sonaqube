
#!/bin/bash
	

	#Author: Eric
	#Description. script to install sonarqube
	#Date : 02/19/2023
    #login: admin 
	#passwd: admin


	sudo yum update -y
	sudo yum install java-11-openjdk-devel -y
	sudo yum install java-11-openjdk -y
    cd /opt
	sudo yum install wget -y
	sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
	sudo yum install unzip
	sudo unzip /opt/sonarqube-9.3.0.51899.zip
	     
	sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
	cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64/
	./sonar.sh start
     sudo firewall-cmd --permanent --add-port=9000/tcpcd
     sudo firewall-cmd --reload