output "vpc_id" {
    value = aws_vpc.roboshop_vpc.id
}

output "igw_id" {
    value = aws_internet_gateway.roboshop_igw.id
}

output "public_subnet_ids" {
    value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
    value = aws_subnet.private[*].id
}

output "database_subnet_ids" {
    value = aws_subnet.database[*].id
}

output "public_route_table_id" {
    value = aws_route_table.public_rt.id
}

output "private_route_table_id" {
    value = aws_route_table.private_rt.id
}

output "database_route_table_id" {
    value = aws_route_table.database_rt.id
}

output "roboshop_eip" {
    value = aws_eip.roboshop_eip.id
}

output "nat_gateway_id" {
    value = aws_nat_gateway.roboshop_nat.id
}