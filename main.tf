 terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.87"
    }
  }
}

provider "snowflake" {
  role = "SYSADMIN"
}

resource "snowflake_database" "db" {
  name = "TERRAFORM_DEMO_DB"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TERRAFORM_DEMO_WH"
  warehouse_size = "xsmall"
  auto_suspend   = 60
}