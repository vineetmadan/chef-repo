#/chef-repo/environments/dev.rb
name "dev"
description "For development"
cookbook "nginx", "= 0.2.0"
override_attributes ({
	"nginx" => {
		"listen" => [ "8080"]
	}
})