variable "project_name" {
  description = "The name of the project to instantiate the instance at."
  default     = ""
}

variable "region_name" {
  description = "The region that this terraform configuration will instantiate at."
  default     = "us-central1"
}

variable "zone_name" {
  description = "The zone that this terraform configuration will instantiate at."
  default     = "us-central1-a"
}

variable "machine_size" {
  description = "The size that this instance will be."
  default     = "f1-micro"
}

variable "script_path" {
  description = "Where is the path to the script locally on the machine?"
}

variable "private_key_path" {
  description = "The path to the private key used to connect to the instance"
}

variable "username" {
  description = "The name of the user that will be used to remote exec the script"
}

variable "instance_name"{
  description = "Instance name"
}
