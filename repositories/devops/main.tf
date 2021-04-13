locals {
  teams_repository_memberships = {
    bots = "admin"
    all  = "push"
  }
  teams = data.terraform_remote_state.teams.outputs.teams
}

module "docker-base-php-fpm" {
  source = "git@github.com:AppCodeOrg/terraform-modules.git//github/repository?ref=0.0.3"

  teams = local.teams

  name        = "docker-base-php-fpm"
  description = "Base docker image for PHP"

  enable_branch_protection = false

  teams_repository_memberships = local.teams_repository_memberships

}

module "docker-base-nginx" {
  source = "git@github.com:AppCodeOrg/terraform-modules.git//github/repository?ref=0.0.3"

  teams = local.teams

  name        = "docker-base-nginx"
  description = "Base docker image for Nginx"

  enable_branch_protection = false

  teams_repository_memberships = local.teams_repository_memberships

}

module "docker-base-magento" {
  source = "git@github.com:AppCodeOrg/terraform-modules.git//github/repository?ref=0.0.3"

  teams = local.teams

  name        = "docker-base-magento"
  description = "Base docker image for Magento"

  enable_branch_protection = false

  teams_repository_memberships = local.teams_repository_memberships

}
