resource "aws_instance" "ec2_instance-priv1" {
  ami           = var.ami_id
  count         = var.number_of_instances
  subnet_id     = var.subnet_id
  instance_type = var.instance_type
  key_name      = var.ami_key_pair_name
}


resource "aws_instance" "ec2_instance-priv2" {
  ami           = var.ami_id
  count         = var.number_of_instances
  subnet_id     = var.subnet_id
  instance_type = var.instance_type
  key_name      = var.ami_key_pair_name
}
