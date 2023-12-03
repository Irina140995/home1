class Article < ApplicationRecord
  
  has_many :coments  
  belongs_to :user
  belongs_to :like
  
end
