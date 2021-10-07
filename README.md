# change-name

Insert description here.

## Steps after repo creation

- Update the title in this README.md file.
- Create repository secret RENOVATE_TOKEN with a repo scoped GitHub token.
- Create repository secret RENOVATE_GIT_AUTHOR with the GitHub author name in format: FirstName LastName \<email-address\> for the user that owns the GitHub token.
- Remove any *.tf files you do not need; usually backend.tf and potentially terraform.tfvars.
- Update .github/workflows/renovate.yaml with the new repo name (and possibly owner).
- Remove this section in this README.md file.
- Add and Commit to Git :)

## Requirements

### Set repository secrets



### Install Terraform

```bash
sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
sudo dnf install -y terraform
```

### Define variables

Create a file called terraform.tfvars with content similar to this:

```hcl
Insert example variables here
```

If you want to use a remote backend to store the state, also create a file called backend.tf

More info about Terraform backends at <https://www.terraform.io/docs/language/settings/backends/>

```bash
cd change-name
terraform init  # Or: terraform init -backend-config=/path-to/backend.tf
terraform apply # Or: terraform apply -var-file=/path-to/terraform.tfvars
```
