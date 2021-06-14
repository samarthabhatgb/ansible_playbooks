pwd
touch file1
yum install tree -y
sudo yum install tree -y
logout
yum install tree -y
sudo yum install tree -y
exit
ssh 172.31.1.159
vi /etc/ssh/ssh_config
ssh ansadmin@172.31.12.233
ssh ansadmin@172.31.1.159
sudo su -
ssh 172.31.12.233
ssh ansadmin@172.31.1.159
ssh-keygen
ls .ssh/
ssh-copy-id ansadmin@172.31.12.233
ssh-copy-id ansadmin@172.31.1.159
cat .ssh/id_rsa.pub 
ssh 172.31.1.159
ssh 172.31.12.233
cd etc
ls
cd /etc/ansible/
ls
sudo vi hosts 
cd ..
ls
cd home/
exit
pwd
vi /etc/ansible/ansible.cfg 
sudo vi /etc/ansible/ansible.cfg 
ansible all --list-hosts
ansible webservers --list-hosts
ansible webservers[0] --list-hosts
ansible webservers[1] --list-hosts
ansible webservers[0:1] --list-hosts
ansible webservers[-1] --list-hosts
ansible webservers[-2] --list-hosts
ansible webservers[0:1] --list-hosts
ansible all -m command -a "ls"
ansible all --help
ansible all -m command -a "ls"
sudo vi /etc/ansible/ansible.cfg 
ansible all -m command -a "ls"
ansible all -m command -a "ls -la"
ansible all -m command -a "touch harifile"
sudo vi /etc/ansible/ansible.cfg 
ansible all -m command -a "ls"

ansible all -m command -a "ls /tmp"
ansible all -m command -a "yum install tree -y"
ansible all -m command -a "sudo yum install tree -y"
ansible all -m command -a "sudo which tree"
ansible webservers[1] -m command -a "sudo yum remove tree* -y"
ansible all -m command -a "sudo which tree"
ansible webservers[1] -a "sudo yum install tree -y"
ansible webservers -a "sudo yum remove tree* -y"
ansible webservers -a "which tree" -b
ansible webservers -m yum -a "name=httpd state=present"
ansible webservers -m yum -a "name=httpd state=present" -b
ansible webservers -a "which httpd" -b
ansible webservers -m yum -a "name=httpd state=latest" -b
ansible webservers -m yum -a "name=httpd state=present" -b
ansible webservers -a "service httpd status" -b
ansible webservers -m service -a "name=httpd state=started" -b
ansible webservers -a "service httpd status" -b
ansible webservers -m service -a "name=httpd state=stopped" -b
ansible webservers -a "service httpd status" -b
ansible webservers -m service -a "name=httpd" -b
ansible webservers -a "service httpd status" -b
ansible webservers -m user -a "name=raj state=present" -b
ansible webservers -a "tail -3 cat /etc/passwd " -b
ansible webservers -a "tail -3 /etc/passwd " -b
ansible webservers -m user -a "name=hari" -b
ansible webservers -a "tail -3 /etc/passwd " -b
ansible webservers -m setup
ansible webservers -m setup -a "filter *ipv4*"
ansible webservers -m setup -a "filter=*ipv4*"
vi create_user.yml
ansible-playbook create_user.yml 
ls
rm -rf file1 
ls
cp create_user.yml create_user_again.yml 
ls
vi create_user_again.yml 
ansible-playbook create_user_again.yml 
ls
cp create_user_again.yml create_user_oncemore.yml 
vi create_user_oncemore.yml 
ansible-playbook create_user_oncemore.yml 
ls
vi install_packages.yml
ansible-playbook install_packages.yml 
cp install_packages.yml packages.yml
vi packages.yml 
ansible-playbook packages.yml 
ansible-playbook packages.yml  -b
ls
cp install_packages.yml create_file.yml
ls
vi create_file.yml 
ansible-playbook create_file.yml 
ansible all -m command -a "ls"
cp create_file.yml create_directory.yml
ls
vi create_directory.yml 
ansible-playbook  create_directory.yml 
ansible all -m command -a "ls -la"
cp create_directory.yml delete_directory.yml
vi delete_directory.yml 
ansible-playbook  delete_directory.yml 
ls
pwd
cd /etc/ansible/
ls
vi hosts 
sudo vi hosts 
cd /home/ansadmin/
ls
ansadmin all -m command -a "sudo which tree"
ansadmin all -m command -a "which tree" -b
ansible all -m command -a "which tree" -b
ansible all -m command -a "which git" -b
ansible all -m command -a "which tree" -b
ls
vi index.html
sudo vi index.html
ls
cp install_packages.yml copy_file.yml
vi copy_file.yml 
ansible-playbook copy_file.yml --syntax-check
vi copy_file.yml 
ansible-playbook copy_file.yml --syntax-check
vi copy_file.yml 
ansible-playbook copy_file.yml --check
vi copy_file.yml 
ansible-playbook copy_file.yml --check
vi copy_file.yml 
ansible-playbook copy_file.yml --check
ansible-playbook copy_file.yml
vi copy_file.yml 
ls
ansible all -a "which httpd" -b
ls
ansible all -a "yum remove httpd" -b
ansible all -a "yum remove httpd* -y" -b
ansible all -a "which httpd" -b
ls
cp install_packages.yml install_httpd.yml
vi install_httpd.yml 
ansible all -a "which httpd" -b
ansible-playbook install_httpd.yml 
ls
cp install_httpd.yml install_apache.yml
vi install_apache.yml 
ansible all -a "which httpd" -b
ansible all -a "yum remove httpd*" -b
ansible all -a "yum remove httpd* -y" -b
ansible all -a "which httpd" -b
ansible-playbook install_apache.yml 
ansible all -a "yum remove httpd* -y" -b
cp install_apache.yml install_complete_webserver.yml
vi install_complete_webserver.yml 
ansible all -a "which httpd" -b
ansible-playbook install_complete_webserver.yml 
ls
cp install_httpd.yml handlers_install_httpd.yml
vi handlers_install_httpd.yml 
ansible all -a "sudo which httpd"
vi handlers_install_httpd.yml 
ansible-playbook handlers_install_httpd.yml 
ansible all -a "sudo which httpd"
ls
sudo vi /etc/ansible/hosts 
ls
cp install_packages.yml install_multiple_packages.yml
vi install_multiple_packages.yml 
ansible all -a "which tree" -b
ansible all -a "yum remove tree* -y" -b
ansible all -a "which tree" -b
ansible all -a "which httpd" -b
ansible all -a "yum remove httpd* -y" -b
ansible all -a "which httpd" -b
ansible all -a "which docker" -b
ansible-playbook install_multiple_packages.yml 
ansible all -a "which docker" -b
ansible all -a "which httpd" -b
vi install_multiple_packages.yml 
ansible-playbook install_multiple_packages.yml 
ansible all -a "which httpd" -b
ls
cp create_user.yml create_user_vars.yml
vi create_user_vars.yml 
vi create_user.yml
vi create_user_vars.yml 
ansible-playbook create_user_vars.yml 
vi user.yml
cp create_user_vars.yml create_user_vars_files.yml 
vi create_user_vars_files.yml
ansible-playbook create_user_vars_files.yml 
vi create_user_vars_files.yml
ls
cat install_complete_webserver.yml 
