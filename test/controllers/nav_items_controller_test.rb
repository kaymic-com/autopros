require 'test_helper'

class NavItemsControllerTest < ActionController::TestCase
  setup do
    @nav_item = nav_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nav_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nav_item" do
    assert_difference('NavItem.count') do
      post :create, nav_item: { blank_target: @nav_item.blank_target, href: @nav_item.href, page_id: @nav_item.page_id, position: @nav_item.position, text: @nav_item.text }
    end

    assert_redirected_to nav_item_path(assigns(:nav_item))
  end

  test "should show nav_item" do
    get :show, id: @nav_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nav_item
    assert_response :success
  end

  test "should update nav_item" do
    patch :update, id: @nav_item, nav_item: { blank_target: @nav_item.blank_target, href: @nav_item.href, page_id: @nav_item.page_id, position: @nav_item.position, text: @nav_item.text }
    assert_redirected_to nav_item_path(assigns(:nav_item))
  end

  test "should destroy nav_item" do
    assert_difference('NavItem.count', -1) do
      delete :destroy, id: @nav_item
    end

    assert_redirected_to nav_items_path
  end
end
