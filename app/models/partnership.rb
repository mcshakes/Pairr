class Partnership < ActiveRecord::Base
  belongs_to :user
  belongs_to :partner
end
