require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::CmsPagesController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "admin_cms_pages", :action => "index").should == "/admin_cms_pages"
    end
  
    it "maps #new" do
      route_for(:controller => "admin_cms_pages", :action => "new").should == "/admin_cms_pages/new"
    end
  
    it "maps #show" do
      route_for(:controller => "admin_cms_pages", :action => "show", :id => "1").should == "/admin_cms_pages/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "admin_cms_pages", :action => "edit", :id => "1").should == "/admin_cms_pages/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "admin_cms_pages", :action => "create").should == {:path => "/admin_cms_pages", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "admin_cms_pages", :action => "update", :id => "1").should == {:path =>"/admin_cms_pages/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "admin_cms_pages", :action => "destroy", :id => "1").should == {:path =>"/admin_cms_pages/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/admin_cms_pages").should == {:controller => "admin_cms_pages", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/admin_cms_pages/new").should == {:controller => "admin_cms_pages", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/admin_cms_pages").should == {:controller => "admin_cms_pages", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/admin_cms_pages/1").should == {:controller => "admin_cms_pages", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/admin_cms_pages/1/edit").should == {:controller => "admin_cms_pages", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/admin_cms_pages/1").should == {:controller => "admin_cms_pages", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/admin_cms_pages/1").should == {:controller => "admin_cms_pages", :action => "destroy", :id => "1"}
    end
  end
end
