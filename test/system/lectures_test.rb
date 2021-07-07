require "application_system_test_case"

class LecturesTest < ApplicationSystemTestCase
  setup do
    @lecture = lectures(:one)
  end

  test "visiting the index" do
    visit lectures_url
    assert_selector "h1", text: "Lectures"
  end

  test "creating a Lecture" do
    visit lectures_url
    click_on "New Lecture"

    fill_in "Classroom", with: @lecture.classroom_id
    fill_in "Number", with: @lecture.number
    fill_in "Teacher", with: @lecture.teacher_id
    click_on "Create Lecture"

    assert_text "Lecture was successfully created"
    click_on "Back"
  end

  test "updating a Lecture" do
    visit lectures_url
    click_on "Edit", match: :first

    fill_in "Classroom", with: @lecture.classroom_id
    fill_in "Number", with: @lecture.number
    fill_in "Teacher", with: @lecture.teacher_id
    click_on "Update Lecture"

    assert_text "Lecture was successfully updated"
    click_on "Back"
  end

  test "destroying a Lecture" do
    visit lectures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lecture was successfully destroyed"
  end
end
