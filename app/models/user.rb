class User < ActiveRecord::Base
  has_many :user_languages
  has_many :languages, through: :user_languages

  has_many :partnerships
  has_many :paireds, through: :partnerships

  has_many :inverse_partners, :class_name => "Partnership", :foreign_key => "partner_id"
  has_many :inverse_partners, :through => :inverse_partners, :source => :user

  validates :nickname, presence: true
  validates :details, length: { maximum: 500 }

  def self.find_or_create_from_auth(data)
    user = User.find_or_create_by(provider: data.provider, uid: data.uid)
    # binding.pry into here to see data.info
    user.nickname = data.info.nickname
    user.image_url = data.info.image_url

    user.save
    user
  end

  # def self.different_users
  #   User.all.where(user.id != current_user.id)
  # end
end
