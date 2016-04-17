require 'test_helper'

class Portfolio::ItemsControllerTest < ActionController::TestCase
  setup do
    @portfolio_item = portfolio_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:portfolio_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create portfolio_item" do
    assert_difference('Portfolio::Item.count') do
      post :create, portfolio_item: { make: @portfolio_item.make, model: @portfolio_item.model, service_id: @portfolio_item.service_id, year: @portfolio_item.year }
    end

    assert_redirected_to portfolio_item_path(assigns(:portfolio_item))
  end

  test "should show portfolio_item" do
    get :show, id: @portfolio_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @portfolio_item
    assert_response :success
  end

  test "should update portfolio_item" do
    patch :update, id: @portfolio_item, portfolio_item: { make: @portfolio_item.make, model: @portfolio_item.model, service_id: @portfolio_item.service_id, year: @portfolio_item.year }
    assert_redirected_to portfolio_item_path(assigns(:portfolio_item))
  end

  test "should destroy portfolio_item" do
    assert_difference('Portfolio::Item.count', -1) do
      delete :destroy, id: @portfolio_item
    end

    assert_redirected_to portfolio_items_path
  end
end
