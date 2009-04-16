require 'test_helper'

class Admin::GlossaryTermsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:glossary_terms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create glossary_term" do
    assert_difference('GlossaryTerm.count') do
      post :create, :glossary_term => { }
    end

    assert_redirected_to admin_glossary_term_path(assigns(:glossary_term))
  end

  test "should show glossary_term" do
    get :show, :id => glossary_terms(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => glossary_terms(:one).to_param
    assert_response :success
  end

  test "should update glossary_term" do
    put :update, :id => glossary_terms(:one).to_param, :glossary_term => { }
    assert_redirected_to admin_glossary_term_path(assigns(:glossary_term))
  end

  test "should destroy glossary_term" do
    assert_difference('GlossaryTerm.count', -1) do
      delete :destroy, :id => glossary_terms(:one).to_param
    end

    assert_redirected_to admin_glossary_terms_path
  end
end
