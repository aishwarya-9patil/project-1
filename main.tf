resource "aws_instance" "server1" {
  instance_type = "t2.nano"
  ami = "ami-0614680123427b75e"

  tags = {
    Name = "Amazon-server"
 }
}

