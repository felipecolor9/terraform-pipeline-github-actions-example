resource "aws_key_pair" "key" {
  key_name   = "aws-key-pipelines"
  public_key = var.aws_key_pub
}

resource "aws_instance" "ec2" {
  # UBUNTU 22.04 LTS
  # Obtida ao escolher um OS ao criar uma instancia EC2
  ami                         = var.ami_ubuntu
  instance_type               = var.type_microt2
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet_id
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "vm-ec2-terraform"
  }
}