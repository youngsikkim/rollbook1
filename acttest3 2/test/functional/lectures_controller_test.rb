require 'test_helper'

class LecturesControllerTest < ActionController::TestCase
  setup do
    @lecture = lectures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lectures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lecture" do
    assert_difference('Lecture.count') do
      post :create, lecture: @lecture.attributes
    end

    assert_redirected_to lecture_path(assigns(:lecture))
  end

  test "should show lecture" do
    get :show, id: @lecture.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lecture.to_param
    assert_response :success
  end

  test "should update lecture" do
    put :update, id: @lecture.to_param, lecture: @lecture.attributes
    assert_redirected_to lecture_path(assigns(:lecture))
  end

  test "should destroy lecture" do
    assert_difference('Lecture.count', -1) do
      delete :destroy, id: @lecture.to_param
    end

    assert_redirected_to lectures_path
  end
end
