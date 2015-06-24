require "test_helper"

class PartnershipTest < ActiveSupport::TestCase

  def partnership
    @partnership ||= Partnership.new
  end

  def test_valid
    assert partnership.valid?
  end

end
