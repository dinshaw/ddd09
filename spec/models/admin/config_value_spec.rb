require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::ConfigValue do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :value => "value for value",
      :sys_var => false
    }
  end

  it "should create a new instance given valid attributes" do
    Admin::ConfigValue.create!(@valid_attributes)
  end
end
