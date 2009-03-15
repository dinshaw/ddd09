require File.expand_path(File.dirname(__FILE__) + '/../../../spec_helper')

describe "/admin_config_values/show.html.erb" do
  include Admin::ConfigValuesHelper
  before(:each) do
    assigns[:config_value] = @config_value = stub_model(Admin::ConfigValue,
      :name => "value for name",
      :value => "value for value",
      :sys_var => false
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ value/)
    response.should have_text(/false/)
  end
end

