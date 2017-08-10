#
# cookbook name:: apache
# Recipe:: default
#
# copyright 2017, cloudmotion
#
# All rights reserved
# 
#
# chef-repo\cookbooks\apache\recipes\default.rb

# intall apache
package "apache2" do
	action :install
end



# start apache

# start the apache servcice
# make sure servie starts on reboot
service "apache2" do
	action [:start, :enable]
end


# write our home page
cookbook_file "/var/www/index.hmtl" do
	source "index.html"
	mode "0644"
end
