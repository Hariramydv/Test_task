require "test_helper"

class DiscussionTopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discussion_topic = discussion_topics(:one)
  end

  test "should get index" do
    get discussion_topics_url
    assert_response :success
  end

  test "should get new" do
    get new_discussion_topic_url
    assert_response :success
  end

  test "should create discussion_topic" do
    assert_difference("DiscussionTopic.count") do
      post discussion_topics_url, params: { discussion_topic: { title: @discussion_topic.title } }
    end

    assert_redirected_to discussion_topic_url(DiscussionTopic.last)
  end

  test "should show discussion_topic" do
    get discussion_topic_url(@discussion_topic)
    assert_response :success
  end

  test "should get edit" do
    get edit_discussion_topic_url(@discussion_topic)
    assert_response :success
  end

  test "should update discussion_topic" do
    patch discussion_topic_url(@discussion_topic), params: { discussion_topic: { title: @discussion_topic.title } }
    assert_redirected_to discussion_topic_url(@discussion_topic)
  end

  test "should destroy discussion_topic" do
    assert_difference("DiscussionTopic.count", -1) do
      delete discussion_topic_url(@discussion_topic)
    end

    assert_redirected_to discussion_topics_url
  end
end
