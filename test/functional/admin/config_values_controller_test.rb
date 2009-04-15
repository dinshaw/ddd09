require 'test_helper'

class Admin::ConfigValuesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:config_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create config_value" do
    assert_difference('ConfigValue.count') do
      post :create, :config_value => { }
    end

    assert_redirected_to admin_config_value_path(assigns(:config_value))
  end

  test "should show config_value" do
    get :show, :id => config_values(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => config_values(:one).to_param
    assert_response :success
  end

  test "should update config_value" do
    put :update, :id => config_values(:one).to_param, :config_value => { }
    assert_redirected_to admin_config_value_path(assigns(:config_value))
  end

  test "should destroy config_value" do
    assert_difference('ConfigValue.count', -1) do
      delete :destroy, :id => config_values(:one).to_param
    end

    assert_redirected_to admin_config_values_path
  end
end
