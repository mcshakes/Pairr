class Partnership < ActiveRecord::Base
  belongs_to :user
  belongs_to :paired, class_name: "User"
  # as per the video

  enum condition: %w(potential reject pending matched)

  scope :reject, -> { where(condition: 1) }
  scope :pending, -> { where(condition: 2) }
  scope :matched, -> { where(condition: 3) }

  def self.new_matches(current_user)
    potential_matches = []
    pending_matches = []
    Partnership.all.each do |partner|
      if partner.condition == "pending" && partner.user_id != current_user.id
        pending_matches << partner
      end
    end
    Partnership.all.each do |partner|
      if partner.condition == "potential" && partner.user_id != current_user.id
        pending_matches << partner
      end
    end
    potential_matches.flatten + pending_matches.flatten
  end
end
