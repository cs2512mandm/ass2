require 'test_helper'

class GolfersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @golfer = golfers(:one)
  end

  test "should get index" do
    get golfers_url
    assert_response :success
  end

  test "should get new" do
    get new_golfer_url
    assert_response :success
  end

  test "should create golfer" do
    assert_difference('Golfer.count') do
      post golfers_url, params: { golfer: { average_points: @golfer.average_points, country: @golfer.country, events_played: @golfer.events_played, events_played: @golfer.events_played, name: @golfer.name, points_gained_this_year: @golfer.points_gained_this_year, points_lost_this_year: @golfer.points_lost_this_year, this_week: @golfer.this_week, total_points: @golfer.total_points } }
    end

    assert_redirected_to golfer_url(Golfer.last)
  end

  test "should show golfer" do
    get golfer_url(@golfer)
    assert_response :success
  end

  test "should get edit" do
    get edit_golfer_url(@golfer)
    assert_response :success
  end

  test "should update golfer" do
    patch golfer_url(@golfer), params: { golfer: { average_points: @golfer.average_points, country: @golfer.country, events_played: @golfer.events_played, events_played: @golfer.events_played, name: @golfer.name, points_gained_this_year: @golfer.points_gained_this_year, points_lost_this_year: @golfer.points_lost_this_year, this_week: @golfer.this_week, total_points: @golfer.total_points } }
    assert_redirected_to golfer_url(@golfer)
  end

  test "should destroy golfer" do
    assert_difference('Golfer.count', -1) do
      delete golfer_url(@golfer)
    end

    assert_redirected_to golfers_url
  end
end
