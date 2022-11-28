<H1> 4640-Assign <H1>
<H2> Prerequisites <H2>
<ol>
  <li>Install Terraform</li>\
  Terraform Cloud provides infrastructure automation as a service, is free to get started, and has an in-place upgrade to paid option. We need Terraform to automate the droplet creating process You can install Terraform by using the link below https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
  <li>Creating an API token</li>
   Terraform will use digital ocean API token to authenticate you. You can genereate a new API token in the API section in digital ocean.
   Next create an .env file add the token in the file

   next we need to source the token by sourcing the .env file
  <li>SSH key</li>
  SSH keys This project is using acitP sshkey make sure it is 
</ol>

<H2> Setting up Terraform <H2>
<ol>
   <li> Step1  Initializing Terraform Run the following command to initialize Terraform
   <li> Step2  Clone git repository Next clone the git repository using the the git clone command. after cloning the repo you should have a file structure similar to as of below
   <li> Step3  Make changes in the file Next make neceesary changes in the files according to your requirements like changing the linux distro, droplet name, count, database name, firewall specifications etc
   <li> Step4 Run terraform validate, terraform plan and finally terraform apply to apply the changes. After a successful run you should see the following project created in the digital ocean
</ol>

<H2> Testing <H2>
<ol>
  <li> Testing connection to the bastion server
  <li> Testing connection to the database
  <li> Screeenshot of succesful terraform apply run 
</ol>

