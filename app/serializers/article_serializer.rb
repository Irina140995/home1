class ArticleSerializer < ActiveModel::Serializer
  attributes :title

  has_many :coments
  belongs_to :user
end
