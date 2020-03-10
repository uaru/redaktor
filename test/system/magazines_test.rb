require "application_system_test_case"

class MagazinesTest < ApplicationSystemTestCase
  setup do
    @magazine = magazines(:one)
  end

  test "visiting the index" do
    visit magazines_url
    assert_selector "h1", text: "Magazines"
  end

  test "creating a Magazine" do
    visit magazines_url
    click_on "New Magazine"

    fill_in "Facebook", with: @magazine.facebook
    fill_in "Mail", with: @magazine.mail
    fill_in "Title", with: @magazine.title
    fill_in "Website", with: @magazine.website
    click_on "Create Magazine"

    assert_text "Magazine was successfully created"
    click_on "Back"
  end

  test "updating a Magazine" do
    visit magazines_url
    click_on "Edit", match: :first

    fill_in "Facebook", with: @magazine.facebook
    fill_in "Mail", with: @magazine.mail
    fill_in "Title", with: @magazine.title
    fill_in "Website", with: @magazine.website
    click_on "Update Magazine"

    assert_text "Magazine was successfully updated"
    click_on "Back"
  end

  test "destroying a Magazine" do
    visit magazines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Magazine was successfully destroyed"
  end
end
