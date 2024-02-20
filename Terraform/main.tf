variable "prefix" {
  description = "servername prefix"
  default = "gritfyapp"
}

resource "aws_instance" "test-fortune-site-ek-2024" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  count         = 1
  tags = {
    Name = "${var.prefix}-instance"
  }
  vpc_security_group_ids = [
    "sg-01acb22857952dfb1"
  ]

  provisioner "remote-exec" {
    inline = [
      "chmod +x setup_script.sh",
      "./setup_script.sh"
    ]
  }
}
