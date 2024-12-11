SCOPE:
I want to create a Terraform project to deploy an AWS EKS cluster and its associated infrastructure. This should include creating a VPC, subnets, IAM roles, and managed node groups. Please structure a Terraform configuration that uses the AWS provider, interacts with AWS CLI and kubectl, and sets up a fully functional EKS environment.

Step 1:
Create a main.tf file that specifies the AWS provider configuration. Use eu-west-2 as the region. Provide the Terraform code snippet for the main.tf file and explain any required provider blocks or variables.

Step 2:
Now, define the networking components in a network.tf file. This should include a VPC with a chosen CIDR block, public subnets across multiple availability zones, an internet gateway, and the necessary route tables and routes. Please provide the Terraform code and briefly explain how the resources interconnect.

Step 3:
In an eks.tf file, create the necessary IAM role and policies for the EKS cluster, then define the EKS cluster resource itself. The cluster should use the VPC and subnets defined earlier. Provide the Terraform code and summarize the resource arguments and their functions.

Step 4:
Next, in an eks-workers.tf file, define an EKS managed node group. It should have a minimum of 1 node, a maximum of 3 nodes, and use t3.medium instances. Provide the Terraform code and note how this node group is associated with the EKS cluster.

Step 5:
Show me the Terraform commands I should run to initialize, plan, and apply this configuration. Also provide best practices for reviewing the plan before applying. Demonstrate the command sequence and any expected outputs, and mention what to check for before moving forward with terraform apply.
