require 'test_helper'

class ScrapingItemControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scraping_item_index_url
    assert_response :success
  end

end
