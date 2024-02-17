class ArticleSerializer < ActiveModel::Serializer
  attributes :title, :likes_article

 # has_many :coments
 # belongs_to :user
  has_many :likes
end
