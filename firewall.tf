locals {
    ip_list_start = split(",", file("start_ip.txt"))
    ip_list_end = split(",", file("end_ip.txt"))
}

resource "azurerm_sql_firewall_rule" "firewallrule" {

    count = length(local.ip_list_start)
    name = "firewallrule-${count.index}"
    resource_group_name = "${azurerm_resource_group.main-chavo.name}"
    server_name = "${azurerm_sql_server.az_sql.name}"
    start_ip_address = "${local.ip_list_start[count.index]}"
    end_ip_address = "${local.ip_list_end[count.index]}"
}