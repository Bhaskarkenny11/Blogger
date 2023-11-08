require "application_system_test_case"

class CategoroysTest < ApplicationSystemTestCase
  setup do
    @categoroy = categoroys(:one)
  end

  test "visiting the index" do
    visit categoroys_url
    assert_selector "h1", text: "Categoroys"
  end

  test "should create categoroy" do
    visit categoroys_url
    click_on "New categoroy"

    fill_in "Name", with: @categoroy.name
    click_on "Create Categoroy"

    assert_text "Categoroy was successfully created"
    click_on "Back"
  end

  test "should update Categoroy" do
    visit categoroy_url(@categoroy)
    click_on "Edit this categoroy", match: :first

    fill_in "Name", with: @categoroy.name
    click_on "Update Categoroy"

    assert_text "Categoroy was successfully updated"
    click_on "Back"
  end

  test "should destroy Categoroy" do
    visit categoroy_url(@categoroy)
    click_on "Destroy this categoroy", match: :first

    assert_text "Categoroy was successfully destroyed"
  end
end
