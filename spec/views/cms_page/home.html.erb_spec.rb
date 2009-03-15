require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/cms_page/home" do
  before(:each) do
    render 'cms_page/home'
  end
  
  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/cms_page/home])
  end
end
