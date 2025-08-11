env                   = "dev"
aws-region            = "us-east-1"
cluster-name          = "my-eks-cluster"
vpc-cidr-block        = "10.0.0.0/16"
vpc-name              = "jenkins-vpc"
igw-name              = "jenkins-igw"
pub-subnet-count      = 2
pub-cidr-block        = ["10.0.1.0/24", "10.0.2.0/20"]
pub-availability-zone = ["us-east-1a", "us-east-1b"]
pub-sub-name          = "subnet-public"
pri-subnet-count      = 2
pri-cidr-block        = ["10.0.3.0/24", "10.0.4.0/24"]
pri-availability-zone = ["us-east-1a", "us-east-1b"]
pri-sub-name          = "subnet-private"
public-rt-name        = "public-route-table"
private-rt-name       = "private-route-table"
eip-name              = "elasticip-ngw"
ngw-name              = "ngw"
eks-sg                = "eks-sg"

# EKS
is-eks-cluster-enabled     = true
cluster-version            = "1.33"
cluster-name               = "eks-cluster"
endpoint-private-access    = true
endpoint-public-access     = false
ondemand_instance_types    = ["t3a.medium"]
spot_instance_types        = ["c5a.large", "c5a.xlarge", "m5a.large", "m5a.xlarge", "c5.large", "m5.large", "t3a.large", "t3a.xlarge", "t3a.medium"]
desired_capacity_on_demand = "1"
min_capacity_on_demand     = "1"
max_capacity_on_demand     = "5"
desired_capacity_spot      = "1"
min_capacity_spot          = "1"
max_capacity_spot          = "10"
addons = [
  {
    name    = "vpc-cni",
    version = "v1.20.0-eksbuild.1"
  },
  {
    name    = "coredns"
    version = "v1.12.2-eksbuild.4"
  },
  {
    name    = "kube-proxy"
    version = "v1.33.0-eksbuild.2"
  },
  {
    name    = "aws-ebs-csi-driver"
    version = "v1.46.0-eksbuild.1"
  }
  # Add more addons as needed

]




