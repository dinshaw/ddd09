require File.expand_path(File.dirname(__FILE__) + '/../../../spec_helper')

describe "/admin_config_values/new.html.erb" do
  include Admin::ConfigValuesHelper
  
  before(:each) do
    assigns[:config_value] = stub_model(Admin::ConfigValue,
      :new_record? => true,
      :name => "value for name",
      :value => "value for value",
      :sys_var => false
    )
  end

  it "renders new config_value form" do
    render
    
    response.should have_tag("form[action=?][method=post]", admin_config_values_path) do
      with_tag("input#config_value_name[name=?]", "config_value[name]")
      with_tag("input#config_value_value[name=?]", "config_value[value]")
      with_tag("input#config_value_sys_var[name=?]", "config_value[sys_var]")
    end
  end
end


