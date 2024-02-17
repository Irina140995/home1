class Article < ApplicationRecord
  
  has_many :coments  
  belongs_to :user
  has_many :likes #, dependent: :destroy
  
end
