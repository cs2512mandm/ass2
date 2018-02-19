require 'test_helper'

class Ranking2016sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ranking2016 = ranking2016s(:one)
  end

  test "should get index" do
    get ranking2016s_url
    assert_response :success
  end

  test "should get new" do
    get new_ranking2016_url
    assert_response :success
  end

  test "should create ranking2016" do
    assert_difference('Ranking2016.count') do
      post ranking2016s_url, params: { ranking2016: { average_points: @ranking2016.average_points, country: @ranking2016.country, events_played: @ranking2016.events_played, events_played: @ranking2016.events_played, name: @ranking2016.name, points_gained_this_year: @ranking2016.points_gained_this_year, points_lost_this_year: @ranking2016.points_lost_this_year, this_week: @ranking2016.this_week, total_points: @ranking2016.total_points } }
    end

    assert_redirected_to ranking2016_url(Ranking2016.last)
  end

  test "should show ranking2016" do
    get ranking2016_url(@ranking2016)
    assert_response :success
  end

  test "should get edit" do
    get edit_ranking2016_url(@ranking2016)
    assert_response :success
  end

  test "should update ranking2016" do
    patch ranking2016_url(@ranking2016), params: { ranking2016: { average_points: @ranking2016.average_points, country: @ranking2016.country, events_played: @ranking2016.events_played, events_played: @ranking2016.events_played, name: @ranking2016.name, points_gained_this_year: @ranking2016.points_gained_this_year, points_lost_this_year: @ranking2016.points_lost_this_year, this_week: @ranking2016.this_week, total_points: @ranking2016.total_points } }
    assert_redirected_to ranking2016_url(@ranking2016)
  end

  test "should destroy ranking2016" do
    assert_difference('Ranking2016.count', -1) do
      delete ranking2016_url(@ranking2016)
    end

    assert_redirected_to ranking2016s_url
  end
end
