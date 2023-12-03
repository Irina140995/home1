class LikeSerializer < ActiveModel::Serializer
    attributes :user_id :name
  
    has_many :coments
    has_many :articles
    belongs_to :user
  end
  