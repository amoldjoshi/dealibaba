require "application_system_test_case"

class ArticledetailsTest < ApplicationSystemTestCase
  setup do
    @articledetail = articledetails(:one)
  end

  test "visiting the index" do
    visit articledetails_url
    assert_selector "h1", text: "Articledetails"
  end

  test "creating a Articledetail" do
    visit articledetails_url
    click_on "New Articledetail"

    fill_in "Article", with: @articledetail.article_id
    fill_in "Content", with: @articledetail.content
    fill_in "Title", with: @articledetail.title
    click_on "Create Articledetail"

    assert_text "Articledetail was successfully created"
    click_on "Back"
  end

  test "updating a Articledetail" do
    visit articledetails_url
    click_on "Edit", match: :first

    fill_in "Article", with: @articledetail.article_id
    fill_in "Content", with: @articledetail.content
    fill_in "Title", with: @articledetail.title
    click_on "Update Articledetail"

    assert_text "Articledetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Articledetail" do
    visit articledetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Articledetail was successfully destroyed"
  end
end
