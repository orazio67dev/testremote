provider "aws" {
  region     = "eu-central-1"
  access_key = "AKIAVOUSPGVNVJYXIHH7"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
    ami = "ami-024f768332f080c5e"
    instance_type = "t2.nano"
}

}
