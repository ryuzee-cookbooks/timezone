require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

RSpec.configure do |c|
  c.before :all do
    c.os = backend(Serverspec::Commands::Base).check_os
  end
  c.path = "/sbin:/usr/sbin"
end

describe command( "date 2>/dev/null | grep 'JST'" ) do
  it { should return_exit_status 0 }
end

