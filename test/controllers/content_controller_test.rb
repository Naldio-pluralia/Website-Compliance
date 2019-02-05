require 'test_helper'

class ContentControllerTest < ActionDispatch::IntegrationTest
  test "should get ebooks" do
    get content_ebooks_url
    assert_response :success
  end

  test "should get articles" do
    get content_articles_url
    assert_response :success
  end

  test "should get videos" do
    get content_videos_url
    assert_response :success
  end

  test "should get depositions" do
    get content_depositions_url
    assert_response :success
  end

end
