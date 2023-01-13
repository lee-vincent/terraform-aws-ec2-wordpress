#AWS variables
variable "aws_region" {
  type    = string
  default = "us-east-1"
}
variable "aws_prefix" {
  type        = string
  description = "prefix added to aws tags"
  default     = "tf-"
}
variable "wordpress_instance_type" {
  type        = string
  description = "ec2 instance type"
  default     = "t3.large"
}
variable "wp_security_group_id" {

}
variable "wp_subnet_id" {

}
variable "wp_ami_id" {

}
variable "ssh_key_name" {
  type = string
}
# IP Address of SSH Client
variable "workstation_cidr" {
  type        = string
  description = "public ip address of ssh client that will be used in security groups providing access to wordpress ec2 instance"
  default     = "0.0.0.0/0"
}
# Wordpress Variables
variable "wp_db_name" {
  type        = string
  sensitive   = true
  default     = "bilhwordpress"
  description = "database name for wordpress"
}
variable "wp_mariadb_user" {
  type        = string
  sensitive   = true
  default     = "bilhwordpress"
  description = "mariadb user for wordpress"
}
variable "wp_mariadb_user_pw" {
  type        = string
  sensitive   = true
  default     = "bilhwordpress"
  description = "password for the mariadb user for wordpress"
}
variable "wp_mariadb_root_pw" {
  type        = string
  sensitive   = true
  default     = "bilhwordpress"
  description = "root password for mariadb"
}