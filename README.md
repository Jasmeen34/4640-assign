<H1> 4640-Assign <H1>
<H2> Prerequisites <H2>
<ol>
  <li>Install Terraform</li>
 <p> Terraform Cloud provides infrastructure automation as a service, is free to get started, and has an in-place upgrade to paid option. We need Terraform to automate the droplet creating process You can install Terraform by using the link below https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli </p>
  <li>Creating an API token</li>
   <p> Terraform will use digital ocean API token to authenticate you. You can genereate a new API token in the API section in digital ocean.Next create an .env file add the token in the file next we need to source the token by sourcing the .env file </p>
  <li>SSH key</li>
  <p> SSH keys This project is using acitP sshkey make sure it is in the working directory </p>
</ol>

<H2> Setting up Terraform <H2>
<ol>
   <li> Step1  Initializing Terraform Run the following command to initialize Terraform
   <li> Step2  Clone git repository Next clone the git repository using the the git clone command. after cloning the repo you should have a file structure similar to as of below
   ![image](https://user-images.githubusercontent.com/91240401/204221633-ae1fad81-7bfa-4654-b489-0b50f6b0c38b.png)

   <li> Step3  Make changes in the file Next make neceesary changes in the files according to your requirements like changing the linux distro, droplet name, count, database name, firewall specifications etc
   <li> Step4 Run terraform validate, terraform plan and finally terraform apply to apply the changes. After a successful run you should see the following project created in the digital ocean
   ![image](https://user-images.githubusercontent.com/91240401/204221838-7c4d4522-bab1-4f40-905f-7a2126312bc0.png)
   ![image](https://user-images.githubusercontent.com/91240401/204222077-9c3eb40f-1abb-4da1-820b-cefb217e7675.png)
   ![image](https://user-images.githubusercontent.com/91240401/204222195-9a70312a-91a2-4795-a6a2-7ca3faa8dc15.png)
   ![image](https://user-images.githubusercontent.com/91240401/204222263-4af09f53-958e-4b34-a450-58f7f0f59a59.png)

   
</ol>

<H2> Testing <H2>
<ol>
  <li> Testing connection to the bastion server
  <p> Run the command ssh -A root@<ip-address> </p>
  ![image](https://user-images.githubusercontent.com/91240401/204222684-d29cb8a5-bd89-4351-841d-64fc2b093582.png)
  <li> Testing connection to the database
  <p> To test the connection to the database get the database connection string from the digitalocean and the password from terraform.tfstate file. Next install MongoDB-compass on you local machine and add the ip address of the local machine to the trusted sources in the digitalocean. In the MongoDB compass App add a new connection enter the connection string and connect </p>
  ![image](https://user-images.githubusercontent.com/91240401/204223319-9c8f369a-1b61-4044-98f0-05318dc5b3c2.png)
  <li> Screeenshot of succesful terraform apply run 
  ![image](https://user-images.githubusercontent.com/91240401/204223427-4469142d-a452-493a-9d9b-fdfdfaad8792.png)

</ol>

