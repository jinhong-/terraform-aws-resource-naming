output "generated_name" {
  description = "The generated name with random_id presented in padded hexadecimal digits as suffix."
  value       = "${module.this.generated_name}"
}
