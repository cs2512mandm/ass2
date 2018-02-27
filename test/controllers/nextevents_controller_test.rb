require 'test_helper'

class NexteventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nextevents_index_url
    assert_response :success
  end

end
