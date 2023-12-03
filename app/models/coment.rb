class Coment < ApplicationRecord
 belongs_to :article
 belongs_to :user
 has_many :likes
end
