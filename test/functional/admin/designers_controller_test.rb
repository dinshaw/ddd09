require 'test_helper'

class Admin::DesignersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:designers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create designer" do
    assert_difference('Designer.count') do
      post :create, :designer => { }
    end

    assert_redirected_to admin_designer_path(assigns(:designer))
  end

  test "should show designer" do
    get :show, :id => designers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => designers(:one).to_param
    assert_response :success
  end

  test "should update designer" do
    put :update, :id => designers(:one).to_param, :designer => { }
    assert_redirected_to admin_designer_path(assigns(:designer))
  end

  test "should destroy designer" do
    assert_difference('Designer.count', -1) do
      delete :destroy, :id => designers(:one).to_param
    end

    assert_redirected_to admin_designers_path
  end
end
