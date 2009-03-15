require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::ConfigValuesController do

  def mock_config_value(stubs={})
    @mock_config_value ||= mock_model(Admin::ConfigValue, stubs)
  end
  
  describe "GET index" do

    it "exposes all admin_config_values as @admin_config_values" do
      Admin::ConfigValue.should_receive(:find).with(:all).and_return([mock_config_value])
      get :index
      assigns[:admin_config_values].should == [mock_config_value]
    end

    describe "with mime type of xml" do
  
      it "renders all admin_config_values as xml" do
        Admin::ConfigValue.should_receive(:find).with(:all).and_return(config_values = mock("Array of Admin::ConfigValues"))
        config_values.should_receive(:to_xml).and_return("generated XML")
        get :index, :format => 'xml'
        response.body.should == "generated XML"
      end
    
    end

  end

  describe "GET show" do

    it "exposes the requested config_value as @config_value" do
      Admin::ConfigValue.should_receive(:find).with("37").and_return(mock_config_value)
      get :show, :id => "37"
      assigns[:config_value].should equal(mock_config_value)
    end
    
    describe "with mime type of xml" do

      it "renders the requested config_value as xml" do
        Admin::ConfigValue.should_receive(:find).with("37").and_return(mock_config_value)
        mock_config_value.should_receive(:to_xml).and_return("generated XML")
        get :show, :id => "37", :format => 'xml'
        response.body.should == "generated XML"
      end

    end
    
  end

  describe "GET new" do
  
    it "exposes a new config_value as @config_value" do
      Admin::ConfigValue.should_receive(:new).and_return(mock_config_value)
      get :new
      assigns[:config_value].should equal(mock_config_value)
    end

  end

  describe "GET edit" do
  
    it "exposes the requested config_value as @config_value" do
      Admin::ConfigValue.should_receive(:find).with("37").and_return(mock_config_value)
      get :edit, :id => "37"
      assigns[:config_value].should equal(mock_config_value)
    end

  end

  describe "POST create" do

    describe "with valid params" do
      
      it "exposes a newly created config_value as @config_value" do
        Admin::ConfigValue.should_receive(:new).with({'these' => 'params'}).and_return(mock_config_value(:save => true))
        post :create, :config_value => {:these => 'params'}
        assigns(:config_value).should equal(mock_config_value)
      end

      it "redirects to the created config_value" do
        Admin::ConfigValue.stub!(:new).and_return(mock_config_value(:save => true))
        post :create, :config_value => {}
        response.should redirect_to(admin_config_value_url(mock_config_value))
      end
      
    end
    
    describe "with invalid params" do

      it "exposes a newly created but unsaved config_value as @config_value" do
        Admin::ConfigValue.stub!(:new).with({'these' => 'params'}).and_return(mock_config_value(:save => false))
        post :create, :config_value => {:these => 'params'}
        assigns(:config_value).should equal(mock_config_value)
      end

      it "re-renders the 'new' template" do
        Admin::ConfigValue.stub!(:new).and_return(mock_config_value(:save => false))
        post :create, :config_value => {}
        response.should render_template('new')
      end
      
    end
    
  end

  describe "PUT udpate" do

    describe "with valid params" do

      it "updates the requested config_value" do
        Admin::ConfigValue.should_receive(:find).with("37").and_return(mock_config_value)
        mock_config_value.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :config_value => {:these => 'params'}
      end

      it "exposes the requested config_value as @config_value" do
        Admin::ConfigValue.stub!(:find).and_return(mock_config_value(:update_attributes => true))
        put :update, :id => "1"
        assigns(:config_value).should equal(mock_config_value)
      end

      it "redirects to the config_value" do
        Admin::ConfigValue.stub!(:find).and_return(mock_config_value(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(admin_config_value_url(mock_config_value))
      end

    end
    
    describe "with invalid params" do

      it "updates the requested config_value" do
        Admin::ConfigValue.should_receive(:find).with("37").and_return(mock_config_value)
        mock_config_value.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :config_value => {:these => 'params'}
      end

      it "exposes the config_value as @config_value" do
        Admin::ConfigValue.stub!(:find).and_return(mock_config_value(:update_attributes => false))
        put :update, :id => "1"
        assigns(:config_value).should equal(mock_config_value)
      end

      it "re-renders the 'edit' template" do
        Admin::ConfigValue.stub!(:find).and_return(mock_config_value(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end

    end

  end

  describe "DELETE destroy" do

    it "destroys the requested config_value" do
      Admin::ConfigValue.should_receive(:find).with("37").and_return(mock_config_value)
      mock_config_value.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the admin_config_values list" do
      Admin::ConfigValue.stub!(:find).and_return(mock_config_value(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(admin_config_values_url)
    end

  end

end
