provider "aws" {
 region = "us-west-2"
}

# create a base Samvera server
resource "aws_instance" "kickme" {
  ami = "ami-f91f5581" #use my kickme/hyrax AMI
  instance_type = "c5d.large"
  key_name = "hpottinger"
  security_groups = ["UCLA-VPN-allow"]
  tags {
  Name = "terraform-samvera-hyrax-kickme"
  }
}
