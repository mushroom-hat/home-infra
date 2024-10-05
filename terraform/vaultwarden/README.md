## About
This directory stores all terraform configurations for the Vaultwarden service. The vault warden service hosted locally stores all passwords related to my personal home infra securely.

## Prerequisities
1. Ensure Base Infrastructure is provisioned
2. Ensure Vaultwarden service is configured. (See ansible/roles/vaultwarden/tasks)
3. Create user in Vaultwarden
4. Copy email, master password, client id and client secret  into `creds.tfvars` 
5. Change server in `main.tf` if necessary (e.g., if domain not setup, just change `server = ip address`)