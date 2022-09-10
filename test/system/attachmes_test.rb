require "application_system_test_case"

class AttachmesTest < ApplicationSystemTestCase
  setup do
    @attachme = attachmes(:one)
  end

  test "visiting the index" do
    visit attachmes_url
    assert_selector "h1", text: "Attachmes"
  end

  test "should create attachme" do
    visit attachmes_url
    click_on "New attachme"

    fill_in "Name", with: @attachme.name
    fill_in "Project", with: @attachme.project_id
    click_on "Create Attachme"

    assert_text "Attachme was successfully created"
    click_on "Back"
  end

  test "should update Attachme" do
    visit attachme_url(@attachme)
    click_on "Edit this attachme", match: :first

    fill_in "Name", with: @attachme.name
    fill_in "Project", with: @attachme.project_id
    click_on "Update Attachme"

    assert_text "Attachme was successfully updated"
    click_on "Back"
  end

  test "should destroy Attachme" do
    visit attachme_url(@attachme)
    click_on "Destroy this attachme", match: :first

    assert_text "Attachme was successfully destroyed"
  end
end
