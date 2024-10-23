terraform {
  required_version = ">= 1.7.0"
  cloud {
    organization = "cklewar"
    hostname     = "app.terraform.io"

    workspaces {
      name = "f5-xc-rseries-ce-module"
    }
  }

  required_providers {
    restful = {
      source  = "magodo/restful"
      version = ">= 0.16.1"
    }

    volterra = {
      source  = "volterraedge/volterra"
      version = "= 0.11.38"
    }

    http-full = {
      source  = "salrashid123/http-full"
      version = ">= 1.3.1"
    }

    local = ">= 2.2.3"
    null  = ">= 3.1.1"
  }
}