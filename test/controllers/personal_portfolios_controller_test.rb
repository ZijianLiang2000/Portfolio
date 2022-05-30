require "test_helper"

class PersonalPortfoliosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_portfolio = personal_portfolios(:one)
  end

  test "should get index" do
    get personal_portfolios_url
    assert_response :success
  end

  test "should get new" do
    get new_personal_portfolio_url
    assert_response :success
  end

  test "should create personal_portfolio" do
    assert_difference('PersonalPortfolio.count') do
      post personal_portfolios_url, params: { personal_portfolio: {  } }
    end

    assert_redirected_to personal_portfolio_url(PersonalPortfolio.last)
  end

  test "should show personal_portfolio" do
    get personal_portfolio_url(@personal_portfolio)
    assert_response :success
  end

  test "should get edit" do
    get edit_personal_portfolio_url(@personal_portfolio)
    assert_response :success
  end

  test "should update personal_portfolio" do
    patch personal_portfolio_url(@personal_portfolio), params: { personal_portfolio: {  } }
    assert_redirected_to personal_portfolio_url(@personal_portfolio)
  end

  test "should destroy personal_portfolio" do
    assert_difference('PersonalPortfolio.count', -1) do
      delete personal_portfolio_url(@personal_portfolio)
    end

    assert_redirected_to personal_portfolios_url
  end
end
