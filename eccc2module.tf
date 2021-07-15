resource "aws_instance" "Sonar_instance" {
  ami           = "ami-0dc8f589abe99f538"
instance_type = "t2.micro"
associate_public_ip_address = true
key_name = "Oregenec2"
user_data = <<EOF
#!/bin/bash
sudo su
yum upgrade -y
yum update -y
yum install java-1.8.0 -y
sudo wget -O /etc/yum.repos.d/sonar.repo http://downloads.sourceforge.net/project/sonar-pkg/rpm/sonar.repo
yum install sonar -y
service sonar start
EOF
tags = {
  Name = "Sonar Qube"
}

}
