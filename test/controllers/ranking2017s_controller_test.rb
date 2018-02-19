require 'test_helper'

class Ranking2017sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ranking2017 = ranking2017s(:one)
  end

  test "should get index" do
    get ranking2017s_url
    assert_response :success
  end

  test "should get new" do
    get new_ranking2017_url
    assert_response :success
  end

  test "should create ranking2017" do
    assert_difference('Ranking2017.count') do
      post ranking2017s_url, params: { ranking2017: { average_points: @ranking2017.average_points, country: @ranking2017.country, events_played: @ranking2017.events_played, events_played: @ranking2017.events_played, name: @ranking2017.name, points_gained_this_year: @ranking2017.points_gained_this_year, points_lost_this_year: @ranking2017.points_lost_this_year, this_week: @ranking2017.this_week, total_points: @ranking2017.total_points } }
    end

    assert_redirected_to ranking2017_url(Ranking2017.last)
  end

  test "should show ranking2017" do
    get ranking2017_url(@ranking2017)
    assert_response :success
  end

  test "should get edit" do
    get edit_ranking2017_url(@ranking2017)
    assert_response :success
  end

  test "should update ranking2017" do
    patch ranking2017_url(@ranking2017), params: { ranking2017: { average_points: @ranking2017.average_points, country: @ranking2017.country, events_played: @ranking2017.events_played, events_played: @ranking2017.events_played, name: @ranking2017.name, points_gained_this_year: @ranking2017.points_gained_this_year, points_lost_this_year: @ranking2017.points_lost_this_year, this_week: @ranking2017.this_week, total_points: @ranking2017.total_points } }
    assert_redirected_to ranking2017_url(@ranking2017)
  end

  test "should destroy ranking2017" do
    assert_difference('Ranking2017.count', -1) do
      delete ranking2017_url(@ranking2017)
    end

    assert_redirected_to ranking2017s_url
  end
end
