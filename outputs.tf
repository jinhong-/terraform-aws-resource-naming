output "name" {
  description = "The generated name with random_id presented in padded hexadecimal digits as suffix."
  value       = length(random_id.this) > 0 ? random_id.this[0].hex : ""
}
