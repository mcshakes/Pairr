require "test_helper"

class UserTest < ActiveSupport::TestCase

  test "user can have a description" do
    user = User.new(details: "can't have more than 500 characters I guess...", nickname: "butt", partnerships: [])
    assert user.valid?
  end

  test "but no more than 500 characters" do
    user = User.new
    user.details = "b" * 501
    refute user.valid?
  end

end
