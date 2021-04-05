locals {
  teams_repository_memberships = {
    bots = "admin"
    all  = "pull"
  }
  teams = data.terraform_remote_state.teams.outputs.teams
}

module "github-repository-template" {
  source = "git@github.com:AppCodeOrg/terraform-modules.git//github/repository?ref=0.0.3"

  teams = local.teams

  name        = "github-repository-template"
  description = "Generic Parent Template"

  is_private_repo      = false
  is_template          = true
  create_from_template = false

  teams_repository_memberships = local.teams_repository_memberships

  # master_approving_review_count = 3

  # branches_to_create = ["dev"]

  # branches_to_protect = ["dev"]

  # branches_require_pull_request_review = { dev = true }

  # branches_approving_review_count = { dev = 3 }


}
