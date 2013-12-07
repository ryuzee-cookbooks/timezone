#
# Cookbook Name:: timezone 
# Recipe:: default 
#
# Author:: Ryuzee <ryuzee@gmail.com>
#
# Copyright 2012, Ryutaro YOSHIBA 
#
# This software is released under the MIT License.
# http://opensource.org/licenses/mit-license.php

case node[:platform]
when "centos","amazon"
  cmd = "cp -p /usr/share/zoneinfo/Japan /etc/localtime"
  execute cmd do
    action :run
  end
when "ubuntu", "debian"
  cmd = "echo 'Asia/Tokyo' > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata"
  execute cmd do
    action :run
  end
end

# vim: filetype=ruby.chef
