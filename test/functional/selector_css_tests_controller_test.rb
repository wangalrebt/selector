require 'test_helper'

class SelectorCssTestsControllerTest < ActionController::TestCase
  setup do
    @selector_css_test = selector_css_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:selector_css_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create selector_css_test" do
    assert_difference('SelectorCssTest.count') do
      post :create, selector_css_test: { css: @selector_css_test.css, selector_url_test_id: @selector_css_test.selector_url_test_id }
    end

    assert_redirected_to selector_css_test_path(assigns(:selector_css_test))
  end

  test "should show selector_css_test" do
    get :show, id: @selector_css_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @selector_css_test
    assert_response :success
  end

  test "should update selector_css_test" do
    put :update, id: @selector_css_test, selector_css_test: { css: @selector_css_test.css, selector_url_test_id: @selector_css_test.selector_url_test_id }
    assert_redirected_to selector_css_test_path(assigns(:selector_css_test))
  end

  test "should destroy selector_css_test" do
    assert_difference('SelectorCssTest.count', -1) do
      delete :destroy, id: @selector_css_test
    end

    assert_redirected_to selector_css_tests_path
  end
end
