resource "aws_instance" "test-server" {
  ami           = "ami-06878d265978313ca"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.test-sg.id]
  user_data              = file("./install-script.sh")
  
}

resource "aws_security_group" "test-sg" {
  name = "Security Group"
  description = "Security Group for Grafana"

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    protocol    = "tcp"
    from_port   = 80
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}