require 'test_helper'

class SwethasControllerTest < ActionController::TestCase
  setup do
    @swetha = swethas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:swethas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create swetha" do
    assert_difference('Swetha.count') do
      post :create, swetha: { description: @swetha.description, name: @swetha.name }
    end

    assert_redirected_to swetha_path(assigns(:swetha))
  end

  test "should show swetha" do
    get :show, id: @swetha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @swetha
    assert_response :success
  end

  test "should update swetha" do
    patch :update, id: @swetha, swetha: { description: @swetha.description, name: @swetha.name }
    assert_redirected_to swetha_path(assigns(:swetha))
  end

  test "should destroy swetha" do
    assert_difference('Swetha.count', -1) do
      delete :destroy, id: @swetha
    end

    assert_redirected_to swethas_path
  end
end
