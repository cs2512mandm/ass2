require 'test_helper'

class UsEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @us_event = us_events(:one)
  end

  test "should get index" do
    get us_events_url
    assert_response :success
  end

  test "should get new" do
    get new_us_event_url
    assert_response :success
  end

  test "should create us_event" do
    assert_difference('UsEvent.count') do
      post us_events_url, params: { us_event: { address: @us_event.address, latitude: @us_event.latitude, longitude: @us_event.longitude, name: @us_event.name, start_date: @us_event.start_date } }
    end

    assert_redirected_to us_event_url(UsEvent.last)
  end

  test "should show us_event" do
    get us_event_url(@us_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_us_event_url(@us_event)
    assert_response :success
  end

  test "should update us_event" do
    patch us_event_url(@us_event), params: { us_event: { address: @us_event.address, latitude: @us_event.latitude, longitude: @us_event.longitude, name: @us_event.name, start_date: @us_event.start_date } }
    assert_redirected_to us_event_url(@us_event)
  end

  test "should destroy us_event" do
    assert_difference('UsEvent.count', -1) do
      delete us_event_url(@us_event)
    end

    assert_redirected_to us_events_url
  end
end
