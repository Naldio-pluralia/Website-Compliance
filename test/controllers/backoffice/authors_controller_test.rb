require 'test_helper'

class Backoffice::AuthorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @backoffice_author = backoffice_authors(:one)
  end

  test "should get index" do
    get backoffice_authors_url
    assert_response :success
  end

  test "should get new" do
    get new_backoffice_author_url
    assert_response :success
  end

  test "should create backoffice_author" do
    assert_difference('Backoffice::Author.count') do
      post backoffice_authors_url, params: { backoffice_author: { date_of_birth: @backoffice_author.date_of_birth, description: @backoffice_author.description, name: @backoffice_author.name } }
    end

    assert_redirected_to backoffice_author_url(Backoffice::Author.last)
  end

  test "should show backoffice_author" do
    get backoffice_author_url(@backoffice_author)
    assert_response :success
  end

  test "should get edit" do
    get edit_backoffice_author_url(@backoffice_author)
    assert_response :success
  end

  test "should update backoffice_author" do
    patch backoffice_author_url(@backoffice_author), params: { backoffice_author: { date_of_birth: @backoffice_author.date_of_birth, description: @backoffice_author.description, name: @backoffice_author.name } }
    assert_redirected_to backoffice_author_url(@backoffice_author)
  end

  test "should destroy backoffice_author" do
    assert_difference('Backoffice::Author.count', -1) do
      delete backoffice_author_url(@backoffice_author)
    end

    assert_redirected_to backoffice_authors_url
  end
end
