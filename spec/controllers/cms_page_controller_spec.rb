require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe CmsPageController do

  #Delete these examples and add some real ones
  it "should use CmsPageController" do
    controller.should be_an_instance_of(CmsPageController)
  end


  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end
end
