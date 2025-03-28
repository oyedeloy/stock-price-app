module "ecr_backend" {
  source    = "./modules/ecr"
  repo_name = "stock-backend"
}

module "ecr_frontend" {
  source    = "./modules/ecr"
  repo_name = "stock-frontend"
}

module "ecr_redis" {
  source    = "./modules/ecr"
  repo_name = "stock-cache"
}
