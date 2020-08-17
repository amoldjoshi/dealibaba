require 'test_helper'

class ArticledetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articledetail = articledetails(:one)
  end

  test "should get index" do
    get articledetails_url
    assert_response :success
  end

  test "should get new" do
    get new_articledetail_url
    assert_response :success
  end

  test "should create articledetail" do
    assert_difference('Articledetail.count') do
      post articledetails_url, params: { articledetail: { article_id: @articledetail.article_id, content: @articledetail.content, title: @articledetail.title } }
    end

    assert_redirected_to articledetail_url(Articledetail.last)
  end

  test "should show articledetail" do
    get articledetail_url(@articledetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_articledetail_url(@articledetail)
    assert_response :success
  end

  test "should update articledetail" do
    patch articledetail_url(@articledetail), params: { articledetail: { article_id: @articledetail.article_id, content: @articledetail.content, title: @articledetail.title } }
    assert_redirected_to articledetail_url(@articledetail)
  end

  test "should destroy articledetail" do
    assert_difference('Articledetail.count', -1) do
      delete articledetail_url(@articledetail)
    end

    assert_redirected_to articledetails_url
  end
end
