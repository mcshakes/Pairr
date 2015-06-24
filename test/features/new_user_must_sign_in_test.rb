require 'test_helper'

class NewUserMustSignInTest < ActionDispatch::IntegrationTest
  include Capybara::DSL
  attr_reader :user

  def mock_auth_hash
    @user = [OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
      "provider" => "github",
      "info" => {
        "nickname" => "fakerbocker",
        "image_url" => "fake_mocker_thumbnail"
      },
      "credentials" => {
        "token"   => "mock_token",
        "secret"  => "mock_secret"
      }
      })]
  end

  def setup
    OmniAuth.config.mock_auth[:twitter] = nil
    mock_auth_hash
  end

  test "a new user access the site and comes upon a Github prompt" do
    visit root_path
    assert page.has_content? "Github"
  end

  test "clicking that sign in button takes user through OAuth portal to Details page" do
    visit root_path
    click_link_or_button "Login with Github"
    assert page.has_content? "User Information"
    fill_in "Details", with: "I love programming"
    click_link_or_button "That's what I'm about!"
    assert page.has_content? "Welcome to your Pair Dashboard fakerbocker"
    assert_equal dashboard_path, current_path
  end

  test "user can log out" do
    

  end



end
