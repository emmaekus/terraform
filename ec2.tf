provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "terraform-demo" {
    ami =  "ami-0a2f44ac384506c0e"
    instance_type = "t2.nano"
    key_name = "devkey"
    tags = {
      "Name" = "Jenkins"
      Env = "dev"
    }
}

output "public-ip" {
    value = aws_instance.terraform-demo.public_ip
}
output "public-dns" {
    value = aws_instance.terraform-demo.public_dns
}