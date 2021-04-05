# github-terraform
Github Terraform Recipes

# github-terraform
Commit Message to Add/Remove User
users-john-doe-membership-add, users-jane-doe-membership-remove

Commit Message to Add Team
teams-frontend-add

Commit Message to Add Repository
repositories/devops-gcp-tf-modules-create

export DIR=`echo ${_COMMIT_MSG%%-*}`

gcloud builds submit --config=cloudbuild-plan.yaml --substitutions=_COMMIT_MESSAGE=users-john-doe-membership-add,_DIR=users,_ARTIFACT_BUCKET_NAME=appcode-cloudbuild-artifacts-5790,_PLAN_FILE=john-doe-membership-add

gcloud builds submit --config=cloudbuild-apply.yaml --substitutions=_COMMIT_MESSAGE=users-john-doe-membership-add,_DIR=users,_ARTIFACT_BUCKET_NAME=appcode-cloudbuild-artifacts-5790,_PLAN_FILE=john-doe-membership-add


