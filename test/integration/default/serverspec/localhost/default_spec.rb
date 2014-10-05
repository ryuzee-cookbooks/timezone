require 'spec_helper'

describe command( "date 2>/dev/null | grep 'JST'" ) do
  it { should return_exit_status 0 }
end

