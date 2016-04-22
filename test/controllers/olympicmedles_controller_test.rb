require 'test_helper'

class OlympicmedlesControllerTest < ActionController::TestCase
  setup do
    @olympicmedle = olympicmedles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:olympicmedles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create olympicmedle" do
    assert_difference('Olympicmedle.count') do
      post :create, olympicmedle: { athlete_name: @olympicmedle.athlete_name, country: @olympicmedle.country, event: @olympicmedle.event, eventdate: @olympicmedle.eventdate, medal_type: @olympicmedle.medal_type }
    end

    assert_redirected_to olympicmedle_path(assigns(:olympicmedle))
  end

  test "should show olympicmedle" do
    get :show, id: @olympicmedle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @olympicmedle
    assert_response :success
  end

  test "should update olympicmedle" do
    patch :update, id: @olympicmedle, olympicmedle: { athlete_name: @olympicmedle.athlete_name, country: @olympicmedle.country, event: @olympicmedle.event, eventdate: @olympicmedle.eventdate, medal_type: @olympicmedle.medal_type }
    assert_redirected_to olympicmedle_path(assigns(:olympicmedle))
  end

  test "should destroy olympicmedle" do
    assert_difference('Olympicmedle.count', -1) do
      delete :destroy, id: @olympicmedle
    end

    assert_redirected_to olympicmedles_path
  end
end
