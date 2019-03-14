output "random_id" {
  value = "${lower(random_id.vm-rid.hex)}"
}
