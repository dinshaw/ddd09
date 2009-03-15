require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::CmsPagesController do

  def mock_cms_page(stubs={})
    @mock_cms_page ||= mock_model(Admin::CmsPage, stubs)
  end
  
  describe "GET index" do

    it "exposes all admin_cms_pages as @admin_cms_pages" do
      Admin::CmsPage.should_receive(:find).with(:all).and_return([mock_cms_page])
      get :index
      assigns[:admin_cms_pages].should == [mock_cms_page]
    end

    describe "with mime type of xml" do
  
      it "renders all admin_cms_pages as xml" do
        Admin::CmsPage.should_receive(:find).with(:all).and_return(cms_pages = mock("Array of Admin::CmsPages"))
        cms_pages.should_receive(:to_xml).and_return("generated XML")
        get :index, :format => 'xml'
        response.body.should == "generated XML"
      end
    
    end

  end

  describe "GET show" do

    it "exposes the requested cms_page as @cms_page" do
      Admin::CmsPage.should_receive(:find).with("37").and_return(mock_cms_page)
      get :show, :id => "37"
      assigns[:cms_page].should equal(mock_cms_page)
    end
    
    describe "with mime type of xml" do

      it "renders the requested cms_page as xml" do
        Admin::CmsPage.should_receive(:find).with("37").and_return(mock_cms_page)
        mock_cms_page.should_receive(:to_xml).and_return("generated XML")
        get :show, :id => "37", :format => 'xml'
        response.body.should == "generated XML"
      end

    end
    
  end

  describe "GET new" do
  
    it "exposes a new cms_page as @cms_page" do
      Admin::CmsPage.should_receive(:new).and_return(mock_cms_page)
      get :new
      assigns[:cms_page].should equal(mock_cms_page)
    end

  end

  describe "GET edit" do
  
    it "exposes the requested cms_page as @cms_page" do
      Admin::CmsPage.should_receive(:find).with("37").and_return(mock_cms_page)
      get :edit, :id => "37"
      assigns[:cms_page].should equal(mock_cms_page)
    end

  end

  describe "POST create" do

    describe "with valid params" do
      
      it "exposes a newly created cms_page as @cms_page" do
        Admin::CmsPage.should_receive(:new).with({'these' => 'params'}).and_return(mock_cms_page(:save => true))
        post :create, :cms_page => {:these => 'params'}
        assigns(:cms_page).should equal(mock_cms_page)
      end

      it "redirects to the created cms_page" do
        Admin::CmsPage.stub!(:new).and_return(mock_cms_page(:save => true))
        post :create, :cms_page => {}
        response.should redirect_to(admin_cms_page_url(mock_cms_page))
      end
      
    end
    
    describe "with invalid params" do

      it "exposes a newly created but unsaved cms_page as @cms_page" do
        Admin::CmsPage.stub!(:new).with({'these' => 'params'}).and_return(mock_cms_page(:save => false))
        post :create, :cms_page => {:these => 'params'}
        assigns(:cms_page).should equal(mock_cms_page)
      end

      it "re-renders the 'new' template" do
        Admin::CmsPage.stub!(:new).and_return(mock_cms_page(:save => false))
        post :create, :cms_page => {}
        response.should render_template('new')
      end
      
    end
    
  end

  describe "PUT udpate" do

    describe "with valid params" do

      it "updates the requested cms_page" do
        Admin::CmsPage.should_receive(:find).with("37").and_return(mock_cms_page)
        mock_cms_page.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :cms_page => {:these => 'params'}
      end

      it "exposes the requested cms_page as @cms_page" do
        Admin::CmsPage.stub!(:find).and_return(mock_cms_page(:update_attributes => true))
        put :update, :id => "1"
        assigns(:cms_page).should equal(mock_cms_page)
      end

      it "redirects to the cms_page" do
        Admin::CmsPage.stub!(:find).and_return(mock_cms_page(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(admin_cms_page_url(mock_cms_page))
      end

    end
    
    describe "with invalid params" do

      it "updates the requested cms_page" do
        Admin::CmsPage.should_receive(:find).with("37").and_return(mock_cms_page)
        mock_cms_page.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :cms_page => {:these => 'params'}
      end

      it "exposes the cms_page as @cms_page" do
        Admin::CmsPage.stub!(:find).and_return(mock_cms_page(:update_attributes => false))
        put :update, :id => "1"
        assigns(:cms_page).should equal(mock_cms_page)
      end

      it "re-renders the 'edit' template" do
        Admin::CmsPage.stub!(:find).and_return(mock_cms_page(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end

    end

  end

  describe "DELETE destroy" do

    it "destroys the requested cms_page" do
      Admin::CmsPage.should_receive(:find).with("37").and_return(mock_cms_page)
      mock_cms_page.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the admin_cms_pages list" do
      Admin::CmsPage.stub!(:find).and_return(mock_cms_page(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(admin_cms_pages_url)
    end

  end

end
