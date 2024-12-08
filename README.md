

Devops-Cloud Projects:
--------------------------------------------

Devops + AWS + Azure Cloud

Projects --> Tools ( Jenkins, Git, Terraform ) 

Whenever any projects, and the tasks are assigned, usually we should which is the best tool used to complete the given tasks

AWS, Azure

Hashicorp Vault--> installation,configuration and usage

Project1--> Integration of Jenkins with Terraform
------------------------------------------------
Pre-requestics:
-----------------------------------------------------------------------------------------------
1. You need to have Jenkins server,(AWS) , We should also know about how to write a Declarative pipeline.---> t2.medium instance type
2. Git to be installed, by default most of linux distro comes git installed by default.
3. Github account, and you create public repo, you need create credentials and should be aware about git commands
4. Terraform installation, how to write terraform files and terraform commands
5. Jenkins ---> whenever we are integrating Jenkins with Terraform or any other tool say for example Docker, Kubernetes,Maven we need to install certain plugins

Jenkins--> Terraform --> Terraform plugins

6. AWS, We need to have cloud account, and we need to know how to create EC2(VM) servers,as well we need to know about how to create a IAM User or IAM Role
-----------------------------------------------------------------------------------------------

1. We are going login into AWS account and launch EC2 instance (t2.medium)

2. Login into the Ubuntu EC2 instance and install the Jenkins

We will be working as root user

sudo apt update

3. Installing Jenkins
1. Install openjdk ( Java to be installed, Java11,Java17,Java21)
sudo apt install openjdk-17-jdk -y
----------------------------------
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins

systemctl enable jenkins.service
systemctl start jenkins.service
systemctl status jenkins.service

Jenkins will always be running on port 8080

4.Install Terraform on the same server where jenkins is running 

wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

5. Install the git, but git is be default 

6. You need have github account,and i need to create the key for authentication.


7. Configuration of Jenkins , Installation of Plugin ,and configuration

Jenkins---> Terraform 

Jenkins to communicate with Terraform, we need the plugin

8. To create IAM Role and attach to the EC2 instance

9. Write Terraform files 

10. Writing Declarative pipeline 

Pipeline- GUI  or you can write a file with the name Jenkinsfile

