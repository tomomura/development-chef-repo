#
# Cookbook Name:: rbenv-ruby
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user 'ryota' do
  password 'paul0205'
  supports :manage_home => true
  home "/home/ryota"
  action :create
end

group 'sudo' do
  action [ :modify ]
  members [ 'ryota' ]
  append true
end

# package "libffi-devel" do
  # action :install
# end
