resource "aws_instance" "bastion" {
    ami = local.ami_id
    instance_type = var.environment == "dev" ? "t3.micro" : "t3.medium"
    subnet_id = local.public_subnet_id
    vpc_security_group_ids = local.bastion_sg_id
    tags = {
        Name = "${local.common_name}_bastion"
    }
}