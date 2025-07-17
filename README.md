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

    ### The Cluster is successfully  created and now we can use it for our deployment.

2. Deploy an NGINX Application using a Kubernetes Manifest

    This project involves deploying nginx application using kubernetes manifests.In our case we would be creating two manifest files:
    - "nginx-deployment.yaml"
    - "nginx-service.yaml"

    ![nginx-deployment.yaml](ss/nginx-deployment.png)

    ![nginx-service.yaml](ss/nginx-service.png)
    ## Since we need to expose our service to the outer world , hence we are using LoadBalancer as a service instead of NodePort

    ### Here , we are using kubectl apply method to create our deployment and thus run the below commands
        kubectl apply -f nginx-deployment.yaml
        kubectl apply -f nginx-service.yaml

    ### Now our nginx-deployment will be up and running and exposed with the help of a Load Balancer.
    ![deployment-output](ss/deployment-output.png)

    ### Use the External-IP in your browser to access the website.
    ![website-output](ss/website-output.png)


### Nginx Application is successfully deployed using Kubernetes Manifest.