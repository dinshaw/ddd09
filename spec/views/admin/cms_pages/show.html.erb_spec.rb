require File.expand_path(File.dirname(__FILE__) + '/../../../spec_helper')

describe "/admin_cms_pages/show.html.erb" do
  include Admin::CmsPagesHelper
  before(:each) do
    assigns[:cms_page] = @cms_page = stub_model(Admin::CmsPage,
      :name => "value for name",
      :title => "value for title",
      :sub_title => "value for sub_title",
      :body => "value for body",
      :meta_keyword => "value for meta_keyword",
      :meta_description => "value for meta_description",
      :position => 1,
      :parent_id => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ title/)
    response.should have_text(/value\ for\ sub_title/)
    response.should have_text(/value\ for\ body/)
    response.should have_text(/value\ for\ meta_keyword/)
    response.should have_text(/value\ for\ meta_description/)
    response.should have_text(/1/)
    response.should have_text(/1/)
  end
end

