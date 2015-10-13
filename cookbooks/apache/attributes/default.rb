case node["platform"]
when "amazon"
	default["package_name"] = "httpd"
	default["service_name"] = "httpd"
	default["document_root"] = "/var/www/html"
when "ubuntu"
	default["package_name"] = "apache2"
	default["service_name"] = "apache2"
	default["document_root"] = "/var/www"
end
default['apache']['greeting'] = "World"