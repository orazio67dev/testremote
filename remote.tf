provider "aws" {
  region     = "eu-central-1"
  access_key = "AKIAVOUSPGVNVJYXIHH7"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
    ami = "ami-024f768332f080c5e"
    instance_type = lookup(var.my-var,terraform.workspace)
}

variable "my-var" {
    type = map(string)
    default = {
        default = "t2.small"
        dev = "t2.nano"
        staging = "t2.small"
        prod = "t2.micro"
    }
}