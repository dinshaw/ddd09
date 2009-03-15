require File.expand_path(File.dirname(__FILE__) + '/../../../spec_helper')

describe "/admin_cms_pages/edit.html.erb" do
  include Admin::CmsPagesHelper
  
  before(:each) do
    assigns[:cms_page] = @cms_page = stub_model(Admin::CmsPage,
      :new_record? => false,
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

  it "renders the edit cms_page form" do
    render
    
    response.should have_tag("form[action=#{cms_page_path(@cms_page)}][method=post]") do
      with_tag('input#cms_page_name[name=?]', "cms_page[name]")
      with_tag('input#cms_page_title[name=?]', "cms_page[title]")
      with_tag('input#cms_page_sub_title[name=?]', "cms_page[sub_title]")
      with_tag('textarea#cms_page_body[name=?]', "cms_page[body]")
      with_tag('textarea#cms_page_meta_keyword[name=?]', "cms_page[meta_keyword]")
      with_tag('textarea#cms_page_meta_description[name=?]', "cms_page[meta_description]")
      with_tag('input#cms_page_position[name=?]', "cms_page[position]")
      with_tag('input#cms_page_parent_id[name=?]', "cms_page[parent_id]")
    end
  end
end


