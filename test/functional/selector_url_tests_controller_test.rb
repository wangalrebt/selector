require 'test_helper'

class SelectorUrlTestsControllerTest < ActionController::TestCase
  setup do
    @selector_url_test = selector_url_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:selector_url_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create selector_url_test" do
    assert_difference('SelectorUrlTest.count') do
      post :create, selector_url_test: { url: @selector_url_test.url }
    end

    assert_redirected_to selector_url_test_path(assigns(:selector_url_test))
  end

  test "should show selector_url_test" do
    get :show, id: @selector_url_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @selector_url_test
    assert_response :success
  end

  test "should update selector_url_test" do
    put :update, id: @selector_url_test, selector_url_test: { url: @selector_url_test.url }
    assert_redirected_to selector_url_test_path(assigns(:selector_url_test))
  end

  test "should destroy selector_url_test" do
    assert_difference('SelectorUrlTest.count', -1) do
      delete :destroy, id: @selector_url_test
    end

    assert_redirected_to selector_url_tests_path
  end
end
