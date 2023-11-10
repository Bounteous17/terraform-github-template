terraform {
  cloud {
    organization = "Bounteous17"

    workspaces {
      name = "personal"
    }
  }

  required_version = ">= 1.1.2"
}