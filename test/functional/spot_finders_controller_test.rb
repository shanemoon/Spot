require 'test_helper'

class SpotFindersControllerTest < ActionController::TestCase
  setup do
    @spot_finder = spot_finders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spot_finders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spot_finder" do
    assert_difference('SpotFinder.count') do
      post :create, :spot_finder => @spot_finder.attributes
    end

    assert_redirected_to spot_finder_path(assigns(:spot_finder))
  end

  test "should show spot_finder" do
    get :show, :id => @spot_finder.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @spot_finder.to_param
    assert_response :success
  end

  test "should update spot_finder" do
    put :update, :id => @spot_finder.to_param, :spot_finder => @spot_finder.attributes
    assert_redirected_to spot_finder_path(assigns(:spot_finder))
  end

  test "should destroy spot_finder" do
    assert_difference('SpotFinder.count', -1) do
      delete :destroy, :id => @spot_finder.to_param
    end

    assert_redirected_to spot_finders_path
  end
end
