# Creating secure, fault-tolerante and H/A website on AWS EC2
## This code will create:
1. VPC 
   - route tables
   - route table association 
   - 3 public subnets "for elb"
   - 3 private subnets "for ec2"
2. Security Group for ec2
   - port 22 open for everyone 
   - port 80 open for elb 
3. Security Group for elb
   - port 80 open for everyone 
4. Key pair 
   - to connect to ec2 using ssh key
5. Launch configuration
   - AMIs are from different regions 
   - userdata installs nginx and writes "Hello world" to index file
6. EC2 instances 
   - depending on minimum and maximum amount you define on ASG
6. ELB automatically 
   - distributes incoming application traffic 
7. Autoscaling Group
   - scales resources to meet traffic demands 

     using launch configurtaion

     using elb healthcheck 

   
## Prerequsites: 
 
1. Download and extract the  latest release of the Terraform. 
   -  [Download Terraform - Terraform by HashiCorp](https://www.terraform.io/downloads.html)
   -  Run unzip terraform
   -  Run mv terraform /bin

2. You should have an AWS account credentials. 
   -  Setup IAM access key and secret on your AWS account.
   -  To login to your account run on your terminal aws configure

## How to use this code 

1. Clone this repo
2. Add .tfvars file
3. Run terraform init
4. Run terraform plan
5. Run terraform apply