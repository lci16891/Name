require "application_system_test_case"

class IdkScaffoldsTest < ApplicationSystemTestCase
  setup do
    @idk_scaffold = idk_scaffolds(:one)
  end

  test "visiting the index" do
    visit idk_scaffolds_url
    assert_selector "h1", text: "Idk Scaffolds"
  end

  test "creating a Idk scaffold" do
    visit idk_scaffolds_url
    click_on "New Idk Scaffold"

    fill_in "Avatar", with: @idk_scaffold.avatar
    fill_in "User", with: @idk_scaffold.user_id
    click_on "Create Idk scaffold"

    assert_text "Idk scaffold was successfully created"
    click_on "Back"
  end

  test "updating a Idk scaffold" do
    visit idk_scaffolds_url
    click_on "Edit", match: :first

    fill_in "Avatar", with: @idk_scaffold.avatar
    fill_in "User", with: @idk_scaffold.user_id
    click_on "Update Idk scaffold"

    assert_text "Idk scaffold was successfully updated"
    click_on "Back"
  end

  test "destroying a Idk scaffold" do
    visit idk_scaffolds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Idk scaffold was successfully destroyed"
  end
end
