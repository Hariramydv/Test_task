require "application_system_test_case"

class DiscussionTopicsTest < ApplicationSystemTestCase
  setup do
    @discussion_topic = discussion_topics(:one)
  end

  test "visiting the index" do
    visit discussion_topics_url
    assert_selector "h1", text: "Discussion topics"
  end

  test "should create discussion topic" do
    visit discussion_topics_url
    click_on "New discussion topic"

    fill_in "Title", with: @discussion_topic.title
    click_on "Create Discussion topic"

    assert_text "Discussion topic was successfully created"
    click_on "Back"
  end

  test "should update Discussion topic" do
    visit discussion_topic_url(@discussion_topic)
    click_on "Edit this discussion topic", match: :first

    fill_in "Title", with: @discussion_topic.title
    click_on "Update Discussion topic"

    assert_text "Discussion topic was successfully updated"
    click_on "Back"
  end

  test "should destroy Discussion topic" do
    visit discussion_topic_url(@discussion_topic)
    click_on "Destroy this discussion topic", match: :first

    assert_text "Discussion topic was successfully destroyed"
  end
end
