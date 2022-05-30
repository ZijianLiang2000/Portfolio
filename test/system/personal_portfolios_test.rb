require "application_system_test_case"

class PersonalPortfoliosTest < ApplicationSystemTestCase
  setup do
    @personal_portfolio = personal_portfolios(:one)
  end

  test "visiting the index" do
    visit personal_portfolios_url
    assert_selector "h1", text: "Personal Portfolios"
  end

  test "creating a Personal portfolio" do
    visit personal_portfolios_url
    click_on "New Personal Portfolio"

    click_on "Create Personal portfolio"

    assert_text "Personal portfolio was successfully created"
    click_on "Back"
  end

  test "updating a Personal portfolio" do
    visit personal_portfolios_url
    click_on "Edit", match: :first

    click_on "Update Personal portfolio"

    assert_text "Personal portfolio was successfully updated"
    click_on "Back"
  end

  test "destroying a Personal portfolio" do
    visit personal_portfolios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personal portfolio was successfully destroyed"
  end
end
