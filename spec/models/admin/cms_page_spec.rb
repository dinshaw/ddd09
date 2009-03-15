require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::CmsPage do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :title => "value for title",
      :sub_title => "value for sub_title",
      :body => "value for body",
      :meta_keyword => "value for meta_keyword",
      :meta_description => "value for meta_description",
      :position => 1,
      :parent_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Admin::CmsPage.create!(@valid_attributes)
  end
end
