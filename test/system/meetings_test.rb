require "application_system_test_case"

class MeetingsTest < ApplicationSystemTestCase
  setup do
    @meeting = meetings(:one)
  end

  test "visiting the index" do
    visit meetings_url
    assert_selector "h1", text: "Reservations"
  end

  test "creating a Reservation" do
    visit meetings_url
    click_on "New Reservation"

    fill_in "End time", with: @meeting.end_time
    fill_in "Name", with: @meeting.name
    fill_in "Start time", with: @meeting.start_time
    fill_in "User", with: @meeting.user_id
    click_on "Create Reservation"

    assert_text "Reservation was successfully created"
    click_on "Back"
  end

  test "updating a Reservation" do
    visit meetings_url
    click_on "Edit", match: :first

    fill_in "End time", with: @meeting.end_time
    fill_in "Name", with: @meeting.name
    fill_in "Start time", with: @meeting.start_time
    fill_in "User", with: @meeting.user_id
    click_on "Update Reservation"

    assert_text "Reservation was successfully updated"
    click_on "Back"
  end

  test "destroying a Reservation" do
    visit meetings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reservation was successfully destroyed"
  end
end
