# terraform-single-webserver
Terraform provisioning of single webserver in aws. Here are the steps I followed on OSX machine.Clone this repo to your local git directory and follow the steps

Steps:

1. Install awscli. 
   brew install awscli
2. Set up your AWS credentials. It stores the credentials as the environment variables AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY in  ~/.aws/credentials. 
   aws configure
3. Install terraform
   brew install terraform
4. Initialize and apply terraform
   terraform init
   terraform apply

