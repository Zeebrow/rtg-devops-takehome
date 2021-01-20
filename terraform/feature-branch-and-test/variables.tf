# variable "credentials" {
# type = object({
#   access_key = string
#   secret_key = string
# })
# sensitive	= true
# description = "AWS credentials for r2g profile, IAM user r2g-deployment-user"
#}

variable "bucket_name" {
	type	= string
	description	= "Name of the bucket to create, set from cli to include github actions variables."
}

