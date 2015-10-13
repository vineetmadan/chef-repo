#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'nginx' do
	action :install
end

execute "stop httpd" do
	command "service httpd stop"
end

service 'nginx' do
	action [ :enable, :start]
end

cookbook_file "/usr/share/nginx/html/index.html" do
	source "index.html"
	mode "0644"
end