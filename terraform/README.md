# Terraform

## Secrets
Create a ```creds.tfvars``` file in this directory and store these key-value pairs

| VARIABLE_NAME     | REQUIRED | COMMENTS                                   | HOW TO OBTAIN |
|-------------------|----------|--------------------------------------------|---------------|
| `PM_ENDPOINT`     | Yes      | The API endpoint for the Proxmox  | Your Proxmox endpoint e.g., http://192.168.1.1:8123/api2/json
| `PM_API_TOKEN_ID` | Yes      | The ID of the API token used for access    | Create API Token in Proxmox |
| `PM_API_TOKEN`    | Yes      | The API token used for authentication      | Create API Token in Proxmox |
| `VW_EMAIL`        | Yes      | The email address used for Vaultwarden      | Create account in Vaultwarden |
| `VW_MASTER_PASSWORD` | Yes   | The master password for Vaultwarden        | Create account in Vaultwarden |
| `VW_CLIENT_ID`    | Yes      | The Client ID for Vaultwarden API access   | Vaultwarden -> Settings -> Security -> Keys -> Api Key
| `VW_CLIENT_SECRET`| Yes      | The Client Secret for Vaultwarden API access| Vaultwarden -> Settings -> Security -> Keys -> Api Key |

## Commands (To be ran in each Terraform subdirectory)
```
terraform init -backend-config=env/dev.conf
terraform validate
terraform plan --var-file=../creds.tfvars --var-file=env/dev.tfvars -out tfplan
terraform destroy --var-file=../creds.tfvars --var-file=env/dev.tfvars
```
