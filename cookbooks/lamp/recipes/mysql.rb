mysqlpass = Chef::EncryptedDataBagItem.load("mysql", "rtpass")

mysql_service "mysqldefault" do
  initial_root_password mysqlpass["password"]
  action [:create, :start]
end