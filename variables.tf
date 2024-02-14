variable "aws_key_pub" {
  description = "Chave pública para a máquina na AWS"
  default     = ""
  type        = string
}

variable "type_microt2" {
  description = "Tipo de máquina para instancia do EC2"
  default     = "t2.micro"
  type        = string

}

variable "ami_ubuntu" {
  description = "ID AMI de uma imagem Ubuntu 22.04 LTS, utilizavel para EC2"
  default     = "ami-0fb4cf3a99aa89f72"
  type        = string
}