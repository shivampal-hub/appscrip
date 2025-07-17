module "vpc" {
    source = "./modules/vpc"
    vpc_cidr = var.vpc_cidr
    vpc_tag = var.vpc_tag
  
}
module "subnet" {
  source = "./modules/subnet"
  pub_cidr = var.pub_cidr
  my_vpc_id = module.vpc.vpc_id
  pri_cidr = var.pri_cidr
  availability_zones = var.availability_zones
}

module "internet_gateway" {
  source = "./modules/internet_gateway"
  my_vpc_id = module.vpc.vpc_id
  ig_name = var.ig_name
}

module "nat_gateway" {
    source = "./modules/nat_gateway"
    ig_id = module.internet_gateway.ig_id
    eip_id = module.nat_gateway.eip_id
    pub_sub_id = module.subnet.public_subnet_id[0]
    nat_tag = var.nat_tag
  
}

module "route_table" {
    source = "./modules/route_table"
    my_vpc_id = module.vpc.vpc_id
    pubrt = var.pubrt
    prirt = var.prirt

    ig_rt_id = module.route_table.pub-rt_id
    ig_dest_cidr = var.dest_cidr
    ig_id = module.internet_gateway.ig_id

    nt_rt_id = module.route_table.pri-rt_id
    nt_dest_cidr = var.dest_cidr
    nt_id = module.nat_gateway.nat_id

}

module "route_table_association" {
    source = "./modules/route_table_association"
    pub_subnet_id = module.subnet.public_subnet_id
    pub_routetable_id = module.route_table.pub-rt_id

    pri_subnet_id = module.subnet.private_subnet_id
    pri_routetable_id = module.route_table.pri-rt_id
}

module "iam_role" {
  source = "./modules/iam_role"
  tags = var.tags
}

module "iam_role_policy_attachment" {
  source = "./modules/iam_role_policy_attachment"
  role_name = module.iam_role.role_name1
  policy_arn = var.policy_arn
}

module "eks_cluster" {
    source = "./modules/eks_cluster"
    cluster_name = var.cluster_name
    eks_version = var.eks_version
    role_arn = module.iam_role.role_arn
    subnet_ids = module.subnet.private_subnet_id
    depends_on = [module.iam_role_policy_attachment]
    tags = var.tags
}
module "iam_role_node" {
  source = "./modules/iam_role_node"
  tags = var.tags
  
}

module "iam_role_node_policy_attachment" {
  source = "./modules/iam_role_node_policy_attachment"
  role_name = module.iam_role_node.role_name2 
}

module "eks_node_group" {
  source = "./modules/eks_node_group"
  cluster_name = var.cluster_name
  eks_version = var.eks_version
  node_role_arn = module.iam_role_node.role_arn2
  subnet_ids = module.subnet.private_subnet_id
  instance_types = var.instance_types
  ssh_key_name = module.key_pair.key_name

  desired_size = var.desired_size
  max_size = var.max_size
  min_size = var.min_size

  depends_on = [module.iam_role_node_policy_attachment]

  tags = var.tags
  
}

module "key_pair" {
  source = "./modules/key_pair"
  key_name = var.key_name
  
}