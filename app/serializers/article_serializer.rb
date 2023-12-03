class ArticleSerializer < ActiveModel::Serializer
  attributes :title, :like_articles

  has_many :coments
  belongs_to :user
end
