# Data for AWS module

# AWS data
# ----------------------------------------------------------

# Use specific Ubuntu AMI
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "image-id"
    values = ["ami-04a81a99f5ec58529"]
  }
}

output "ubuntu_ami" {
  value = data.aws_ami.ubuntu.id
}
