# vagrantaws

This project uses Vagrant to spin up Ubuntu Server 14.04 LTS as an AWS EC2 instance.

Disclaimer: This project may work on Windows but it was developed on Ubuntu 14.04.

Further disclaimer: This project creates AWS instances which are not free. Be sure to terminate any instances created on AWS.
I'm not responsible for any costs incurred from running this project.


## Install this software on your host

Git, VirtualBox, Vagrant, vagrant-aws plugin, various libraries needed for the vagrant-aws plugin

* sudo apt-get install git
* sudo apt-get install virtualbox
* sudo apt-get install vagrant
* sudo apt-get install virtual-dkms
* sudo vagrant plugin install vagrant-aws
* sudo apt-get install build-essential libxslt-dev libxml2-dev zlib1g-dev ruby-dev

## Prepare your AWS account

1. Log in to your AWS account. 
2. Create a keypair
  - http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html#having-ec2-create-your-key-pair
3. Create non-default security group
  - https://github.com/mitchellh/vagrant-aws/issues/3
4. Accept terms and subscribe
  - This project utilizes this image ami-4c7a3924. In order to use this image the first time you need to accept terms and subscribe in the AWS Marketplace. 
https://aws.amazon.com/marketplace/pp/B00JV9JBDS/ref=srh_res_product_title?ie=UTF8&sr=0-3&qid=1425930674215
5. Accept terms and launch


## Run Project

```
git clone https://github.com/timothyjdev/vagrantaws.git
cd vagrantaws
edit Vagrantfile and include these values:
* aws.access_key_id
* aws.secret_access_key
* aws.keypair_name
* aws.security_groups
vagrant up --provider=aws
```

Open AWS Console and copy the Public IP for this instance

Open browser and navigate to http://PublicIP

## Clean up

Terminate any AWS instances created by this project including the instance that is created when accepting terms and subscribing above..

## Install this software on your host

rspec-puppet, puppet, rake

* sudo gem install rspec-puppet
* sudo gem install puppet
* sudo apt-get install rake

## Unit Test Project

```
cd vagrantaws/modules/apache
rake spec
```
