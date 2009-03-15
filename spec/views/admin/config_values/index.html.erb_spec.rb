require File.expand_path(File.dirname(__FILE__) + '/../../../spec_helper')

describe "/admin_config_values/index.html.erb" do
  include Admin::ConfigValuesHelper
  
  before(:each) do
    assigns[:admin_config_values] = [
      stub_model(Admin::ConfigValue,
        :name => "value for name",
        :value => "value for value",
        :sys_var => false
      ),
      stub_model(Admin::ConfigValue,
        :name => "value for name",
        :value => "value for value",
        :sys_var => false
      )
    ]
  end

  it "renders a list of admin_config_values" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for value".to_s, 2)
    response.should have_tag("tr>td", false.to_s, 2)
  end
end

