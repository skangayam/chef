#
# Cookbook Name:: web-server
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do 
	action :install
end

service "httpd" do
	action [:enable, :start]
end

cookbook_file "hello_world.html" do
	path "/var/www/html/index.html"
	mode "0755"
end