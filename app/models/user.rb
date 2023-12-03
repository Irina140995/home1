class User < ApplicationRecord
  
   has_secure_password
   validates :email, presence: true, uniqueness: true 
  has_many :articles
  has_many :coments
  has_many :api_tokens
  has_many :likes

end
