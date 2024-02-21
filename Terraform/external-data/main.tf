resource "aws_instance" "test-fortune-site-ek-2024" {
  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"
  key_name = "Fortune-Site-EK-2024"
  iam_instance_profile = "fortune-site-role-dynamodb"
  count         = 1
  tags = {
    Name = "${var.prefix}-instance"
  }
  vpc_security_group_ids = [
    "sg-01acb22857952dfb1"
  ]
  user_data = file("${path.module}/script.sh")
#   user_data = <<EOF
# #!/bin/bash

# sudo yum update -y

# sudo yum install git -y

# sudo yum install npm -y

# cd /home/ec2-user

# curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
# sudo apt-get install -y nodejs

# git clone https://github.com/AegyptusCodes/Eriks-Fortune-Site.git
# cd Eriks-Fortune-Site/Fortune-Site

# npm install

# npm start

#   EOF

}
