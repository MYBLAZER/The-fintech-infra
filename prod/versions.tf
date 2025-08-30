terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.9.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.7.1"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.22.0"
    }
  }
}

