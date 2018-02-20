require 'test_helper'

class QueryControllerTest < ActionDispatch::IntegrationTest
  test "should get run" do
    get query_run_url
    assert_response :success
  end

  test "should get results" do
    get query_results_url
    assert_response :success
  end

end
