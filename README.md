# rSeries CE

Terraform to create F5XC rSeries based CE

## Usage

- Clone this repo with: `git clone --recurse-submodules https://github.com/cklewar/f5-xc-rseries-ce`
- Enter repository directory with: `cd f5-xc-rseries-ce`
- Obtain F5XC API certificate file from Console and save it to `cert` directory
- Pick and choose from below examples and add mandatory input data and copy data into file `main.tf.example`.
- Rename file __main.tf.example__ to __main.tf__ with: `rename main.tf.example main.tf`
- Initialize with: `terraform init`
- Apply with: `terraform apply -auto-approve` or destroy with: `terraform destroy -auto-approve`

## rSeries based CE common module usage example data

```hcl
module "site" {
  source                                 = "./modules/f5xc/ce/rseries"
  f5os_tenant                            = format("%s-rseries-ce-test-%s", var.project_prefix, var.project_suffix)
  f5os_tenant_config_image               = var.f5os_tenant_config_image
  f5os_tenant_config_nodes               = var.f5os_tenant_config_nodes
  f5os_tenant_config_vlans               = var.f5os_tenant_config_vlans
  f5os_tenant_config_memory              = var.f5os_tenant_config_memory
  f5os_tenant_config_metadata            = var.f5os_tenant_config_metadata
  f5os_tenant_config_storage_size        = var.f5os_tenant_config_storage_size
  f5os_tenant_config_vcpu_cores_per_node = var.f5os_tenant_config_vcpu_cores_per_node
  f5xc_tenant                            = var.f5xc_tenant
  f5xc_api_url                           = var.f5xc_api_url
  f5xc_api_token                         = var.f5xc_api_token
  f5xc_namespace                         = var.f5xc_namespace
  f5xc_site_name                         = format("%s-aws-ce-test-%s", var.project_prefix, var.project_suffix)
  f5xc_ce_gw_type                        = var.f5xc_ce_gateway_type
  f5xc_sms_provider_name                 = var.f5xc_sms_provider_name
  f5xc_sms_master_nodes_count            = var.f5xc_sms_master_nodes_count
  f5xc_sms_perf_mode_l7_enhanced         = true
  providers = {
    restapi.f5xc = restapi.f5xc
    restapi.f5os = restapi.f5os
  }
}

output "site" {
  value = module.site.ce
}
```