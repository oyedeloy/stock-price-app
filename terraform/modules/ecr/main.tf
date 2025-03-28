resource "aws_ecr_repository" "this" {
  name = var.repo_name

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = {
    Name = var.repo_name
  }

  # Enable force delete to remove non-empty repositories
  force_delete = true
}

