locals {
  teams = data.terraform_remote_state.teams.outputs.teams
}

resource "github_membership" "mayank-aggarwal-org-member" {
  username = "mayank-aggarwal-appcode"
  role     = "admin"
}

resource "github_team_membership" "mayank-aggarwal-team-member" {
  team_id  = lookup(local.teams, each.key)
  role     = each.value

  username = github_membership.mayank-aggarwal-org-member.username
  for_each = {
    devops = "member"
  }
}
