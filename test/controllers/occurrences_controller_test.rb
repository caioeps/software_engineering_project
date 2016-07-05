require 'test_helper'

class OccurrencesControllerTest < ActionController::TestCase
  setup do
    @occurrence = occurrences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:occurrences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create occurrence" do
    assert_difference('Occurrence.count') do
      post :create, occurrence: { description: @occurrence.description, latitude: @occurrence.latitude, location: @occurrence.location, longitude: @occurrence.longitude, rating: @occurrence.rating, time: @occurrence.time }
    end

    assert_redirected_to occurrence_path(assigns(:occurrence))
  end

  test "should show occurrence" do
    get :show, id: @occurrence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @occurrence
    assert_response :success
  end

  test "should update occurrence" do
    patch :update, id: @occurrence, occurrence: { description: @occurrence.description, latitude: @occurrence.latitude, location: @occurrence.location, longitude: @occurrence.longitude, rating: @occurrence.rating, time: @occurrence.time }
    assert_redirected_to occurrence_path(assigns(:occurrence))
  end

  test "should destroy occurrence" do
    assert_difference('Occurrence.count', -1) do
      delete :destroy, id: @occurrence
    end

    assert_redirected_to occurrences_path
  end
end
