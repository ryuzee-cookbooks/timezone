require 'spec_helper'

describe command( "date 2>/dev/null | grep 'JST'" ) do
  its(:exit_status} { should eq 0 }
end

