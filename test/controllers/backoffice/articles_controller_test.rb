require 'test_helper'

class Backoffice::ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @backoffice_article = backoffice_articles(:one)
  end

  test "should get index" do
    get backoffice_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_backoffice_article_url
    assert_response :success
  end

  test "should create backoffice_article" do
    assert_difference('Backoffice::Article.count') do
      post backoffice_articles_url, params: { backoffice_article: { author_id: @backoffice_article.author_id, body: @backoffice_article.body, published_at: @backoffice_article.published_at, title: @backoffice_article.title } }
    end

    assert_redirected_to backoffice_article_url(Backoffice::Article.last)
  end

  test "should show backoffice_article" do
    get backoffice_article_url(@backoffice_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_backoffice_article_url(@backoffice_article)
    assert_response :success
  end

  test "should update backoffice_article" do
    patch backoffice_article_url(@backoffice_article), params: { backoffice_article: { author_id: @backoffice_article.author_id, body: @backoffice_article.body, published_at: @backoffice_article.published_at, title: @backoffice_article.title } }
    assert_redirected_to backoffice_article_url(@backoffice_article)
  end

  test "should destroy backoffice_article" do
    assert_difference('Backoffice::Article.count', -1) do
      delete backoffice_article_url(@backoffice_article)
    end

    assert_redirected_to backoffice_articles_url
  end
end
