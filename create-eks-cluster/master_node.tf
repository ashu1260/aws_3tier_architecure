resource "aws_eks_cluster" "aws_eks" {
  name     = "asha_tf_eks_cluster"
  role_arn = aws_iam_role.eks_cluster.arn

  vpc_config {
    subnet_ids = ["subnet-01...", "subnet-02..."]
  }

   

  tags = {
    app = "apache"
  }
}
