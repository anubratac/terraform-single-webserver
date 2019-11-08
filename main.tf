provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_instance" "webserver" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  vpc_security_group_ids = [aws_security_group.instance.id]
  key_name  = "code-challenge"
  user_data = "${file("install_httpd.sh")}"
/*  user_data = << EOF
              #! /bin/bash
              echo "ByteCubed Challenge ${HOSTNAME}" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
*/
  tags = {
    Name = "${var.name}"
  }
}

resource "aws_security_group"  "instance" {
  name = "webserver-instance"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress  {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

