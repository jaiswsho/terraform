variable "subscription_id" {}
variable "client_id" {}
variable "tenant_id" {}
variable "client_secret" {}

provider "azurerm" {
  version          = "2.25.0"
  client_id        = "${var.client_id}"
  client_secret    = ""
  tenant_id        = ""
  subscription_id  = ""
  features {}
}

resource "azurerm_resource_group" "web_server_rg"{  
  name      = "Uniting-Systems-TF"
  location  = "Australia East"
}