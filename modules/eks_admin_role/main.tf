variable "user_arn" {
  description = "IAM user ARN allowed to assume the EKS admin role"
  type        = string
}

resource "aws_iam_role" "eks_admin" {
  name = "EKSAdminRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          AWS = var.user_arn
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "eks_admin_attach" {
  role       = aws_iam_role.eks_admin.name
  policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

output "eks_admin_role_arn" {
  value = aws_iam_role.eks_admin.arn
}



