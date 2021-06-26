#### University of Minnesota Cybersecurity Bootcamp Project #1
# Deployment of Live ELK Stack Server

The files in this project were used to configure the cloud network displayed below.

![Diagram1](https://github.com/mbjordal/blast-off/blob/main/Diagram1.png)

The following files were used to deploy a live ELK server on Azure.
[![pentest.yml](https://github.com/mbjordal/blast-off/blob/main/Ansible/pentest.yml) - used to install webservers Web1 and Web2
[![elk.yml](https://github.com/mbjordal/blast-off/blob/main/Ansible/elk.yml) - used to install ELK server (Elastisearch, Logstash, Kibana)
[![filebeat-playbook.yml](https://github.com/mbjordal/blast-off/blob/main/Ansible/filebeat-playbook.yml) - used to install to configure Filebeat software on ELK and webservers


## Features
- Deploy a secure cloud network on Azure with specific access policies
- Expose webservers configured with DVWA (Damn Vulnerable Web Application) to the internet
- Place webservers behind a load balancer to ensure high availability
- Gather, process and view log data of webservers

A cloud network was established in Azure with access through the JumpBox provisioner virtual machine (VM). This VM was configured with Docker to deploy an Ansible container. Use of the ansible-playbook [pentest.yml](https://github.com/mbjordal/blast-off/blob/main/Ansible/pentest.yml) configured the webservers with DVWA.
A separate network containing the VM Elk Server that was configured with the playbook [elk.yml] (https://github.com/mbjordal/blast-off/blob/main/Ansible/elk.yml). This network was peered to the original network to be able to receive log data.
Finally, Filebeat software was installed on the servers to create and monitor readable log files through the use of the [filebeat-playbook.yml](https://github.com/mbjordal/blast-off/blob/main/Ansible/filebeat-playbook.yml)

 
### Table of local network addresses

| Name | Function | IP | Operating System |
| ------ | ------ | ----- | ------- |
| Jump Box Provisioner | Network Gateway |10.0.0.4 | Ubuntu Linux
| Web1 | DVWM public facing server |10.0.0.5 | Ubuntu Linux
| Web2 | DVWM public facing server  |10.0.0.6 | Ubuntu Linux
| Elk | ELK Stack Server |10.1.0.4 | Ubuntu Linux

In addition to creating and reading the log files of vulberable webservers, this project deployed secure cloud networks. The Red Team Network required secure system administrator access to the JumpBox provisioner and webservers.
### Access Policies


| Name | Public Access | Allowed IP address | Protocol and Port
| ------ | ------ | ---- | ------ 
| Jump Box Provisioner | No | public IP of sys admin client | SSH to port 22
| Web1 | Yes | public and virtual | HTTP port 80, SSH port 22
| Web2 | Yes | public and virtual | HTTP port 80, SSH port 22
| Elk | No | Virtual Subnet | TCP to port 80 and 5601



