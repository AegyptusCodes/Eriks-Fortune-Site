variable "prefix" {
  description = "servername prefix"
  default     = "fortune-site"
}
resource "aws_instance" "test-fortune-site-ek-2024" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  key_name = "Fortune-Site-EK-2024"
  count         = 1
  tags = {
    Name = "${var.prefix}-instance"
  }
  vpc_security_group_ids = [
    "sg-01acb22857952dfb1"
  ]
  user_data = <<EOF
#!/bin/bash

sudo apt update -y

sudo apt install git -y

sudo apt install npm -y

curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

git clone https://github.com/AegyptusCodes/Eriks-Fortune-Site.git
cd Eriks-Fortune-Site

npm install

npm start

  EOF

}
