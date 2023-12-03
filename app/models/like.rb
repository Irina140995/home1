class Like < ApplicationRecord
    has_many :coments
    has_many :articles
    belongs_to :user
end
