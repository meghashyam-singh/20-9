locals {
    common_name = "${var.project}-${var.environment}"
    public_subnet_id = split(",", data.aws_ssm_parameter.public_subnet_ids.value)[0]
    bastion_sg_id = data.aws_ssm_parameter.bastion_sg_id.value
    ami_id = data.aws_ami.ami_id.id
}