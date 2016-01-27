require 'test_helper'

class MetaInfosControllerTest < ActionController::TestCase
  setup do
    @meta_info = meta_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meta_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meta_info" do
    assert_difference('MetaInfo.count') do
      post :create, meta_info: {  }
    end

    assert_redirected_to meta_info_path(assigns(:meta_info))
  end

  test "should show meta_info" do
    get :show, id: @meta_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meta_info
    assert_response :success
  end

  test "should update meta_info" do
    patch :update, id: @meta_info, meta_info: {  }
    assert_redirected_to meta_info_path(assigns(:meta_info))
  end

  test "should destroy meta_info" do
    assert_difference('MetaInfo.count', -1) do
      delete :destroy, id: @meta_info
    end

    assert_redirected_to meta_infos_path
  end
end
