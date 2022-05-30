variable "name" {}
# variable "count" {default = ["Master", "core", "task"]}
variable "common_tags" {}
variable "emr-master-cluster" { default = ["Master", "Core", "Task"] }
variable "subnet_id" {}
variable "key_name" {}
variable "release_label" {}
variable "applications" {
    type = list
    }
variable "master_instance_type" {}
variable "master_ebs_size" { default = ["100","50","10"] }
variable "core_instance_type" {}
variable "core_instance_count" {}
variable "core_ebs_size" {}
variable "emr_master_security_group" {}
variable "emr_slave_security_group" {}
variable "emr_ec2_instance_profile" {}
variable "emr_service_role" {}
variable "emr_autoscaling_role" {}
variable "use_case" {}
variable "environment"{}
variable "region"{}
