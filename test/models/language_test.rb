require "test_helper"

class LanguageTest < ActiveSupport::TestCase

  def language
    @language ||= Language.new
  end

  # def test_valid
  #   assert language.valid?
  # end

end
