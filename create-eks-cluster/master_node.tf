resource "aws_eks_cluster" "aws_eks" {
  name     = "asha_tf_eks_cluster"
  role_arn = aws_iam_role.eks_cluster.arn

  vpc_config {
    subnet_ids = ["subnet-07ecf1ee0449734d7", "subnet-08c1f23c5d946ffa3"]
  }

   

  tags = {
    app = "apache"
  }
}
