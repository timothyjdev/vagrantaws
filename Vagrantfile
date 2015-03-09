# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  config.vm.box = "dummy"
  config.vm.box_url = "https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box"
  
  config.vm.provider :aws do |aws, override|
    aws.access_key_id = "YOUR KEY"
    aws.secret_access_key = "YOUR SECRET KEY"
    aws.keypair_name = "YOUR KEYPAIR NAME"
    aws.security_groups = "YOUR SECURITY GROUP NAME"
    aws.instance_type = "t1.micro"
	
    aws.user_data = "#cloud-config\nbootcmd:\n - echo 'manual' > /etc/init/ssh.override\npackages:\n - puppet\nruncmd:\n - [ 'rm', '/etc/init/ssh.override' ]\n - [ 'service', 'ssh', 'start' ]\n - sleep 5"
	
    aws.ami = "ami-4c7a3924"
	
    override.ssh.username = "ubuntu"
    override.ssh.private_key_path = "PATH TO YOUR PRIVATE KEY"
    aws.tags = {
      'Name' => 'Web App',
     }
  end

  config.vm.provision :puppet do |puppet|
    puppet.module_path = "modules"
    puppet.manifests_path = "manifests"    
    puppet.manifest_file = "site.pp"
  end
end
