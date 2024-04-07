data "aws_ami" "amazon_linux_2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  owners = ["amazon"] # This ensures the AMI is official
}


# resource "aws_instance" "example" {
#   ami           = data.aws_ami.amazon_linux_2.id
#   instance_type = var.instance_type

#   tags = {
#     Name = "Terraform-github-Action"
#   }
# }
