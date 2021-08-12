
provider "aws" {
	region = "us-east-2"
	profile = "terraform_course2"
}

variable "firststring" 	{
	type = string	
	default = "This is my first string"
}


output "myfirstoutput" {
	value = var.firststring
}






