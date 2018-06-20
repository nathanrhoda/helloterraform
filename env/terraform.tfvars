terragrunt = {
  remote_state {
    backend = "s3"

    config {
      bucket  = "env-remote-state"
      key     = "env/terraform.tfstate"
      region  = "us-east-1"
      encrypt = true
    }
  }
}
