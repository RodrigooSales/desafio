resource "aws_instance" "app_server" {
  ami                         = "ami-053b0d53c279acc90"
  instance_type               = var.instance_type
  security_groups             = [aws_security_group.public.id]
  vpc_security_group_ids      = [aws_security_group.public.id]
  subnet_id                   = aws_subnet.public.id
  key_name                    = "labs-aws"
  associate_public_ip_address = true
  tags = {
    Name        = var.name
    Environment = var.env
    provisioner = "terraform"
    repo        = var.repo
  }
}