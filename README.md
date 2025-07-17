1. Provision AWS EKS Cluster using Terraform

    This Project involves AWS EKS Provisioning using Terraform.
    Here we are using Terraform modules to provision a clean and reusable Infrastructure for EKS Cluster.

    # Terraform Module Structure
    ![Terraform Module Structure](ss/module_structure.png)

    ## Project Structure
    - "main.tf": Entry point that calls modules and configures the EKS cluster
    - "modules/": Reusable Terraform modules for VPC, EKS, IAM, etc.
    - "outputs.tf": Useful outputs such as cluster name, endpoint, and kubeconfig command
    - "variables.tf: custom input variables

    ### 1. Clone the repository
        git clone https://github.com/shivampal-hub/appscrip.git
        cd appscrip

    ### 2. Configure AWS CLI using Access and Secret Key
        aws configure

    ### 3. Initialize Terraform
        terraform init
    
    ### 4. Plan the Deployment
        terraform plan
    ### 5. Apply the Configuration
        terraform apply

    ### Access the Cluster
        Using Output file we get the below command which we use to access our cluster
    ![kube-config Output](ss/kube-config-output.png)
        aws eks update-kubeconfig --region us-east-1 --name eks-cluster-1

    ### then verify using below command
        kubectl get nodes
        
