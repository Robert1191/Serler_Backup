require 'test_helper'

class ResearchMethodsControllerTest < ActionController::TestCase
  setup do
    @research_method = research_methods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:research_methods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create research_method" do
    assert_difference('ResearchMethod.count') do
      post :create, research_method: { name: @research_method.name }
    end

    assert_redirected_to research_method_path(assigns(:research_method))
  end

  test "should show research_method" do
    get :show, id: @research_method
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @research_method
    assert_response :success
  end

  test "should update research_method" do
    patch :update, id: @research_method, research_method: { name: @research_method.name }
    assert_redirected_to research_method_path(assigns(:research_method))
  end

  test "should destroy research_method" do
    assert_difference('ResearchMethod.count', -1) do
      delete :destroy, id: @research_method
    end

    assert_redirected_to research_methods_path
  end
end
