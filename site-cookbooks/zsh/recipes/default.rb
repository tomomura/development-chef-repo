#
# Cookbook Name:: zsh
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "zsh" do
  action :install
  notifies :run, "execute[set default shell]"
end

execute "set default shell" do
  command <<-EOT
    chsh -s /bin/zsh ryota
  EOT
end
