resource "aws_eks_node_group" "node" {
  cluster_name    = aws_eks_cluster.aws_eks.name
  node_group_name = "nodes_group1"

  node_role_arn   = aws_iam_role.eks_nodes.arn
  subnet_ids      =  ["subnet-0dacf6eef751c92c0"]

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }



depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly,
  ]


}
