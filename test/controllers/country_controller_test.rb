require "test_helper"

class CountryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get country_index_url
    assert_response :success
  end
end
