resource "github_team" "all" {
  name        = "all"
  description = "Everyone"
  privacy     = "closed"
}

resource "github_team" "bots" {
  name    = "bots"
  privacy = "secret"
}

resource "github_team" "devops" {
  name           = "devops"
  privacy        = "closed"
  parent_team_id = github_team.all.id
}

output "teams" {
  value = {
    all    = github_team.all.id
    bots   = github_team.bots.id
    devops = github_team.devops.id
  }
}
