class User < ActiveRecord::Base
  validates :details, length: { maximum: 500 }
  has_many :user_languages
  has_many :languages, through: :user_languages
  validates :nickname, presence: true

  def self.find_or_create_from_auth(data)
    user = User.find_or_create_by(provider: data.provider, uid: data.uid)
    # binding.pry into here to see data.info
    user.nickname = data.info.nickname
    user.image_url = data.info.image_url

    user.save
    user
  end
end
