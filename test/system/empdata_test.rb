require "application_system_test_case"

class EmpdataTest < ApplicationSystemTestCase
  setup do
    @empdatum = empdata(:one)
  end

  test "visiting the index" do
    visit empdata_url
    assert_selector "h1", text: "Empdata"
  end

  test "creating a Empdatum" do
    visit empdata_url
    click_on "New Empdatum"

    fill_in "Age", with: @empdatum.age
    fill_in "Designation", with: @empdatum.designation
    fill_in "Gender", with: @empdatum.gender
    fill_in "Name", with: @empdatum.name
    click_on "Create Empdatum"

    assert_text "Empdatum was successfully created"
    click_on "Back"
  end

  test "updating a Empdatum" do
    visit empdata_url
    click_on "Edit", match: :first

    fill_in "Age", with: @empdatum.age
    fill_in "Designation", with: @empdatum.designation
    fill_in "Gender", with: @empdatum.gender
    fill_in "Name", with: @empdatum.name
    click_on "Update Empdatum"

    assert_text "Empdatum was successfully updated"
    click_on "Back"
  end

  test "destroying a Empdatum" do
    visit empdata_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Empdatum was successfully destroyed"
  end
end
