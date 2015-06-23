class User < ActiveRecord::Base
  def self.find_or_create_from_auth(data)
    user = User.find_or_create_by(provider: data.provider, uid: data.uid)
    # binding.pry into here to see data.info
    user.nickname = data.info.nickname
    user.image_url = data.info.image_url

    user.save
    user
  end
end
