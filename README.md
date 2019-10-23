# This repo contains sample - how to iterate two file with lists of IPs

### Requirements 
- Install [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- Install [Terraform](https://www.terraform.io/downloads.html)
- Prepare your [Azure credentials](https://www.terraform.io/docs/providers/azurerm/auth/service_principal_client_secret.html)
- Start project 
```
git clone https://github.com/chavo1/ip-list-terraform.git
cd ip-list-terraform
terraform init
terraform apply
```
- The the firewall rules that will be created:

```
# azurerm_sql_firewall_rule.firewallrule[0] will be created
  + resource "azurerm_sql_firewall_rule" "firewallrule" {
      + end_ip_address      = "192.168.0.6"
      + id                  = (known after apply)
      + name                = "firewallrule-0"
      + resource_group_name = "tf-chavo-resources"
      + server_name         = "mysqlserverchavo"
      + start_ip_address    = "192.168.0.1"
    }

  # azurerm_sql_firewall_rule.firewallrule[1] will be created
  + resource "azurerm_sql_firewall_rule" "firewallrule" {
      + end_ip_address      = "192.168.0.7"
      + id                  = (known after apply)
      + name                = "firewallrule-1"
      + resource_group_name = "tf-chavo-resources"
      + server_name         = "mysqlserverchavo"
      + start_ip_address    = "192.168.0.2"
    }

  # azurerm_sql_firewall_rule.firewallrule[2] will be created
  + resource "azurerm_sql_firewall_rule" "firewallrule" {
      + end_ip_address      = "192.168.0.8"
      + id                  = (known after apply)
      + name                = "firewallrule-2"
      + resource_group_name = "tf-chavo-resources"
      + server_name         = "mysqlserverchavo"
      + start_ip_address    = "192.168.0.3"
    }

  # azurerm_sql_firewall_rule.firewallrule[3] will be created
  + resource "azurerm_sql_firewall_rule" "firewallrule" {
      + end_ip_address      = "192.168.0.9"
      + id                  = (known after apply)
      + name                = "firewallrule-3"
      + resource_group_name = "tf-chavo-resources"
      + server_name         = "mysqlserverchavo"
      + start_ip_address    = "192.168.0.4"
    }

  # azurerm_sql_firewall_rule.firewallrule[4] will be created
  + resource "azurerm_sql_firewall_rule" "firewallrule" {
      + end_ip_address      = "192.168.0.10"
      + id                  = (known after apply)
      + name                = "firewallrule-4"
      + resource_group_name = "tf-chavo-resources"
      + server_name         = "mysqlserverchavo"
      + start_ip_address    = "192.168.0.5"
    }

```