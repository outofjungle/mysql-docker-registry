mysql_service 'default' do
  port '3306'
  initial_root_password 'EBE25191-E6CD-4DB8-A052-6271284BDD0D'
  action [:create, :start]
end
