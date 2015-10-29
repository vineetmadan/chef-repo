# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "vineetmadan"
client_key               "#{current_dir}/vineetmadan.pem"
validation_client_name   "vineetmadan-validator"
validation_key           "#{current_dir}/vineetmadan-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/vineetmadan"
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:editor] = "Notepad"