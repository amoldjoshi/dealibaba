require "application_system_test_case"

class DealersTest < ApplicationSystemTestCase
  setup do
    @dealer = dealers(:one)
  end

  test "visiting the index" do
    visit dealers_url
    assert_selector "h1", text: "Dealers"
  end

  test "creating a Dealer" do
    visit dealers_url
    click_on "New Dealer"

    fill_in "Dealerid", with: @dealer.dealerid
    fill_in "Dealername", with: @dealer.dealername
    fill_in "Dealertype", with: @dealer.dealertype
    fill_in "Dealerurl", with: @dealer.dealerurl
    click_on "Create Dealer"

    assert_text "Dealer was successfully created"
    click_on "Back"
  end

  test "updating a Dealer" do
    visit dealers_url
    click_on "Edit", match: :first

    fill_in "Dealerid", with: @dealer.dealerid
    fill_in "Dealername", with: @dealer.dealername
    fill_in "Dealertype", with: @dealer.dealertype
    fill_in "Dealerurl", with: @dealer.dealerurl
    click_on "Update Dealer"

    assert_text "Dealer was successfully updated"
    click_on "Back"
  end

  test "destroying a Dealer" do
    visit dealers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dealer was successfully destroyed"
  end
end
