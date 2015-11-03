require 'test_helper'

class InfoForReadingsControllerTest < ActionController::TestCase
  setup do
    @info_for_reading = info_for_readings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:info_for_readings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create info_for_reading" do
    assert_difference('InfoForReading.count') do
      post :create, info_for_reading: { birth_date: @info_for_reading.birth_date, email: @info_for_reading.email, name: @info_for_reading.name }
    end

    assert_redirected_to info_for_reading_path(assigns(:info_for_reading))
  end

  test "should show info_for_reading" do
    get :show, id: @info_for_reading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @info_for_reading
    assert_response :success
  end

  test "should update info_for_reading" do
    patch :update, id: @info_for_reading, info_for_reading: { birth_date: @info_for_reading.birth_date, email: @info_for_reading.email, name: @info_for_reading.name }
    assert_redirected_to info_for_reading_path(assigns(:info_for_reading))
  end

  test "should destroy info_for_reading" do
    assert_difference('InfoForReading.count', -1) do
      delete :destroy, id: @info_for_reading
    end

    assert_redirected_to info_for_readings_path
  end
end
