require 'test_helper'

class RegisterNumbersControllerTest < ActionController::TestCase
  setup do
    @register_number = register_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:register_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create register_number" do
    assert_difference('RegisterNumber.count') do
      post :create, register_number: { carried_out: @register_number.carried_out, ddd: @register_number.ddd, ip: @register_number.ip, number: @register_number.number }
    end

    assert_redirected_to register_number_path(assigns(:register_number))
  end

  test "should show register_number" do
    get :show, id: @register_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @register_number
    assert_response :success
  end

  test "should update register_number" do
    patch :update, id: @register_number, register_number: { carried_out: @register_number.carried_out, ddd: @register_number.ddd, ip: @register_number.ip, number: @register_number.number }
    assert_redirected_to register_number_path(assigns(:register_number))
  end

  test "should destroy register_number" do
    assert_difference('RegisterNumber.count', -1) do
      delete :destroy, id: @register_number
    end

    assert_redirected_to register_numbers_path
  end
end
