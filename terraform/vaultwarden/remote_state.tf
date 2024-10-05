locals {
    region                  = "ap-southeast-1"
    bucket_name             = "local-home-infra-terraform-state"
    base_infra_bucket_key   = "${var.env}/base"
}

data "terraform_remote_state" "base_infra" {
    backend = "s3"
    config = {
        bucket = local.bucket_name
        key    = local.base_infra_bucket_key
        region = local.region
    }
}