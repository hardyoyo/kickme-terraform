provider "aws" {
 region = "us-west-2"
}

# create a base Samvera server
resource "aws_instance" "kickme" {
  ami = "ami-d07d31a8" #use my kickme/hyrax AMI
  instance_type = "t2.small"
  key_name = "hpottinger"
  security_groups = ["hardy_sHouse"]
  tags {
  Name = "terraform-samvera-hyrax-kickme"
  }
}
