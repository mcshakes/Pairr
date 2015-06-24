require 'test_helper'

class NewUserMustSignInTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  def mock_auth_hash
    OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
      "provider" => "github",
      "info" => {
        "nickname" => "fakerbocker",
        "image_url" => "fake_mocker_thumbnail"
      },
      "credentials" => {
        "token"   => "mock_token",
        "secret"  => "mock_secret"
      }
      })
  end

  def setup
    OmniAuth.config.mock_auth[:twitter] = nil
    mock_auth_hash
  end

  test "a new user access the site and comes upon a Github prompt" do
    visit root_path
    assert page.has_content? "Github"
  end

  test "clicking that sign in button takes user through OAuth portal" do
    visit root_path
    click_link_or_button "Login with Github"
    assert page.has_content? "User Information"
    # assert_equal edit_user_path(user),current_path
    fill_in "Details", with: "I love programming"
    click_link_or_button "That's what I'm about!"
    assert_equal matches_path,current_path
  end


end
