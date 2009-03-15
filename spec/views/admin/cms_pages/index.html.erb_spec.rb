require File.expand_path(File.dirname(__FILE__) + '/../../../spec_helper')

describe "/admin_cms_pages/index.html.erb" do
  include Admin::CmsPagesHelper
  
  before(:each) do
    assigns[:admin_cms_pages] = [
      stub_model(Admin::CmsPage,
        :name => "value for name",
        :title => "value for title",
        :sub_title => "value for sub_title",
        :body => "value for body",
        :meta_keyword => "value for meta_keyword",
        :meta_description => "value for meta_description",
        :position => 1,
        :parent_id => 1
      ),
      stub_model(Admin::CmsPage,
        :name => "value for name",
        :title => "value for title",
        :sub_title => "value for sub_title",
        :body => "value for body",
        :meta_keyword => "value for meta_keyword",
        :meta_description => "value for meta_description",
        :position => 1,
        :parent_id => 1
      )
    ]
  end

  it "renders a list of admin_cms_pages" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for title".to_s, 2)
    response.should have_tag("tr>td", "value for sub_title".to_s, 2)
    response.should have_tag("tr>td", "value for body".to_s, 2)
    response.should have_tag("tr>td", "value for meta_keyword".to_s, 2)
    response.should have_tag("tr>td", "value for meta_description".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end

