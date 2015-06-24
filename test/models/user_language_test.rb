require "test_helper"

class UserLanguageTest < ActiveSupport::TestCase

  def user_language
    @user_language ||= UserLanguage.new
  end

  def test_valid
    assert user_language.valid?
  end

end
