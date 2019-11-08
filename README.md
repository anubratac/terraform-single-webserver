# terraform-single-webserver
Terraform provisioning of single webserver in aws. Here are the steps I followed on OSX machine.Clone this repo to your local git directory and follow the steps

Steps:

1. Install awscli.<br>
   brew install awscli  <br>
2. Set up your AWS credentials. It stores the credentials as the environment variables AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY in  ~/.aws/credentials. <br>
   aws configure
3. Install terraform   <br>
   brew install terraform  <br>
4. Initialize and apply terraform <br>
   terraform init   <br>
   terraform apply  <br>
5. After it's done deploying, the example will output URLs or IPs you can try out.<br>
6. Run the following to clean and delete all the resources.<br>
   terraform destroy

