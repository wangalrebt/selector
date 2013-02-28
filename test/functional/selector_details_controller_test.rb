require 'test_helper'

class SelectorDetailsControllerTest < ActionController::TestCase
  setup do
    @selector_detail = selector_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:selector_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create selector_detail" do
    assert_difference('SelectorDetail.count') do
      post :create, selector_detail: { headline: @selector_detail.headline, link: @selector_detail.link, selector_css_id: @selector_detail.selector_css_id }
    end

    assert_redirected_to selector_detail_path(assigns(:selector_detail))
  end

  test "should show selector_detail" do
    get :show, id: @selector_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @selector_detail
    assert_response :success
  end

  test "should update selector_detail" do
    put :update, id: @selector_detail, selector_detail: { headline: @selector_detail.headline, link: @selector_detail.link, selector_css_id: @selector_detail.selector_css_id }
    assert_redirected_to selector_detail_path(assigns(:selector_detail))
  end

  test "should destroy selector_detail" do
    assert_difference('SelectorDetail.count', -1) do
      delete :destroy, id: @selector_detail
    end

    assert_redirected_to selector_details_path
  end
end
