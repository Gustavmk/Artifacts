# Lynis : Security Audit Tool
# Install: apt update
# Install:  apt -y install lynis
lynis audit system

 Software:
    - apt-listbugs                                            [ Not Installed ]
    - apt-listchanges                                         [ Not Installed ]
    - checkrestart                                            [ Not Installed ]
    - needrestart                                             [ Not Installed ]
    - debsecan                                                [ Not Installed ]
    - debsums                                                 [ Not Installed ]
    - fail2ban                                                [ Not Installed
	
	
	
# azureuser
# xF3vEmsiVhSnRf

# ansible
# jiJG2qcbrFdrCv

	
# install the necessary software required for installing ansible.
apt install software-properties-common

# add Ansible repo
apt-add-repository --yes --update ppa:ansible/ansible

#  Update the packageing tool
apt update 

# Install Ansible 
apt install ansible -y 

# check Ansible version
ansible --version

# Configure Server

# Configure access to the clients

# First, generate de SSH Key
ssh-keygen

# Go to dir
cd /root/.ssh

# List files, example: ls l 

# The results will be like this:
-rw------- 1 root root 1675 May  9 22:10 id_rsa
-rw-r--r-- 1 root root  396 May  9 22:10 id_rsa.pub

# the .pub file need to distributed to clients


# confige to access windows server 

# Install Dependencies
apt install -y gcc python-dev
apt install -y python3-pip
apt install -y python3-winrm
apt install python-pip -y

# Install WinRM module to Ansibble
pip install "pywinrm>=0.2.2"

# Add client, /etc/ansible/hosts 
[win]
192.168.255.20


# Create Dir for Variable Group
mkdir /etc/ansible/group_vars
sudo chmod -R 777 /etc/ansible/

# win.yml file /etc/ansible/group_vars/win.yaml

---
ansible_user: ansible
ansible_password: jiJG2qcbrFdrCv
ansible_connection: winrm
ansible_winrm_server_cert_validation: ignore
ansible_winrm_transport: basic
ansible_winrm_port: 5985
ansible_python_interpreter: C:\Users\ansible\AppData\Local\Programs\Python\Python37\python


# Execute script \ansible-windows\LAB\Config-Windows.ps1

# Test Ansible Connect to Server 
ansible win -m win_ping