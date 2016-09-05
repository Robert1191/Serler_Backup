require 'test_helper'

class SearchQueriesControllerTest < ActionController::TestCase
  setup do
    @search_query = search_queries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:search_queries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create search_query" do
    assert_difference('SearchQuery.count') do
      post :create, search_query: {  }
    end

    assert_redirected_to search_query_path(assigns(:search_query))
  end

  test "should show search_query" do
    get :show, id: @search_query
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @search_query
    assert_response :success
  end

  test "should update search_query" do
    patch :update, id: @search_query, search_query: {  }
    assert_redirected_to search_query_path(assigns(:search_query))
  end

  test "should destroy search_query" do
    assert_difference('SearchQuery.count', -1) do
      delete :destroy, id: @search_query
    end

    assert_redirected_to search_queries_path
  end
end
