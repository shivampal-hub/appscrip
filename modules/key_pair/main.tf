resource "tls_private_key" "eks_key" {
  algorithm = "RSA"
  rsa_bits = "4096"

}
resource "local_file" "private_key" {
  content = tls_private_key.eks_key.private_key_pem
  filename = "${path.module}/${var.key_name}.pem"
  file_permission = "0400"
}

resource "aws_key_pair" "eks_key" {
  key_name = var.key_name
  public_key = tls_private_key.eks_key.public_key_openssh
}
