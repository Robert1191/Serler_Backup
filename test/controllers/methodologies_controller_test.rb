require 'test_helper'

class MethodologiesControllerTest < ActionController::TestCase
  setup do
    @methodology = methodologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:methodologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create methodology" do
    assert_difference('Methodology.count') do
      post :create, methodology: { name: @methodology.name }
    end

    assert_redirected_to methodology_path(assigns(:methodology))
  end

  test "should show methodology" do
    get :show, id: @methodology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @methodology
    assert_response :success
  end

  test "should update methodology" do
    patch :update, id: @methodology, methodology: { name: @methodology.name }
    assert_redirected_to methodology_path(assigns(:methodology))
  end

  test "should destroy methodology" do
    assert_difference('Methodology.count', -1) do
      delete :destroy, id: @methodology
    end

    assert_redirected_to methodologies_path
  end
end
