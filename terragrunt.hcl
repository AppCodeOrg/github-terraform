remote_state {
  backend = "gcs"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }
  config = {
    bucket         = "UPDATE_BUCKET"
    prefix         = "github/${path_relative_to_include()}"
  }
}

generate "providers" {
  path = "providers.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "github" {
  organization = "UPDATE_GITHUB_ORG"
}
EOF
}

generate "versions" {
    path = "versions.tf"
    if_exists = "overwrite_terragrunt"
    contents = <<EOF
terraform {
  required_version = "~> 0.14"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.6"
    }
  }
}
EOF
}

generate "remote_state_teams" {
    path = "remote_state_teams.tf"
    if_exists = "overwrite_terragrunt"
    contents = <<EOF
data "terraform_remote_state" "teams" {
  backend = "gcs"

  config = {
    bucket         = "UPDATE_BUCKET"
    prefix         = "github/teams"
  }
}
EOF
}
