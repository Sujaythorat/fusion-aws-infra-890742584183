data "aws_ami" "amazon-linux-3" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023*"]
  }

  owners = ["137112412989"]

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

#resource block is used to create resource in cloud
resource "aws_instance" "myinstance" {
  ami           = data.aws_ami.amazon-linux-3.id
  instance_type = var.instance_type
  count         = var.instance_count

  tags = {
    Name = "ProdServer"
  }
}