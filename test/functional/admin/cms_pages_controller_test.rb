require 'test_helper'

class Admin::CmsPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_page" do
    assert_difference('CmsPage.count') do
      post :create, :cms_page => { }
    end

    assert_redirected_to admin_cms_page_path(assigns(:cms_page))
  end

  test "should show cms_page" do
    get :show, :id => cms_pages(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => cms_pages(:one).to_param
    assert_response :success
  end

  test "should update cms_page" do
    put :update, :id => cms_pages(:one).to_param, :cms_page => { }
    assert_redirected_to admin_cms_page_path(assigns(:cms_page))
  end

  test "should destroy cms_page" do
    assert_difference('CmsPage.count', -1) do
      delete :destroy, :id => cms_pages(:one).to_param
    end

    assert_redirected_to admin_cms_pages_path
  end
end
