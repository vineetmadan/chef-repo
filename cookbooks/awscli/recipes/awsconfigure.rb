directory "/root/.aws" do
		action :create
	end

cookbook_file "/root/.aws/config" do
  source "config"
  mode "0644"
end