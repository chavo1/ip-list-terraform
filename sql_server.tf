resource "azurerm_sql_server" "az_sql" {

    name = "mysqlserverchavo"
    resource_group_name = "${azurerm_resource_group.main-chavo.name}"
    location = "${azurerm_resource_group.main-chavo.location}"
    version = "12.0"
    administrator_login = "mradministrator"
    administrator_login_password = "thisIsDog11"

}