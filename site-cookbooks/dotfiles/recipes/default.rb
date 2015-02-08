#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

git "/home/ryota/dotfiles" do
  repository "https://github.com/tomomura/dotfiles.git"
  revision "master"
  action :checkout
  user "ryota"
  notifies :run, "execute[install]"
end

execute "install" do
  user 'ryota'
  environment ( {'HOME' => '/home/ryota'} )
  command <<-EOF
    /home/ryota/dotfiles/setup.sh
  EOF
end
