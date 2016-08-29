require 'test_helper'

class DevMethodsControllerTest < ActionController::TestCase
  setup do
    @dev_method = dev_methods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dev_methods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dev_method" do
    assert_difference('DevMethod.count') do
      post :create, dev_method: { name: @dev_method.name }
    end

    assert_redirected_to dev_method_path(assigns(:dev_method))
  end

  test "should show dev_method" do
    get :show, id: @dev_method
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dev_method
    assert_response :success
  end

  test "should update dev_method" do
    patch :update, id: @dev_method, dev_method: { name: @dev_method.name }
    assert_redirected_to dev_method_path(assigns(:dev_method))
  end

  test "should destroy dev_method" do
    assert_difference('DevMethod.count', -1) do
      delete :destroy, id: @dev_method
    end

    assert_redirected_to dev_methods_path
  end
end
