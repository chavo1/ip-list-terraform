resource "null_resource" "firewall" {
  count = length(local.ip_list_start) // this will iterate the length of the "ip_list_start" list and count here is 5

  provisioner "local-exec" {
    command = "echo 'start ${count.index}:${local.ip_list_start[count.index]}'" // this will display The position and assigned IP for the start list
  }
  provisioner "local-exec" {
    command = "echo 'end ${count.index}:${local.ip_list_end[count.index]}'" // this will display The position and assigned IP for the end list
  }
}
// Here we define the lists that should be iterated 
locals {
  ip_list_start = split(",", file("start_ip.txt"))
  ip_list_end   = split(",", file("end_ip.txt"))
}