# github-terraform

Terraform code to create Repositories, Users, Teams in Github.

The repository uses unique commit messages to generate `terraform plan` files which are then used to do a `terraform apply`.

Please follow the below commit message guidelines to provide proper commit message:

- Make sure you provide the same commit message everytime to commit wihtin a PR, of if you cleanup commits in the PR.

- Make sure your commit message has no spaces, use an `_` instead of spaces.

- You can name the feature branch whatever you like, that doesn't affect the processing.

- Commit Message to Add/Remove User: Start message with `users-` Eg. users-Jane_Doe_add, users-John_Doe_remove

- Commit Message to Add Team: Start message with `teams-` Eg. teams-devops_add, teams-techops_remove

- Commit Message to Add Repository: Start message with `repositories/devops-` if you want to add a repository in devops project. Follow the same convention for other projects/ template.

Note:
