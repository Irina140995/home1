class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  has_many :coments
  has_many :articles
  has_many :api_tokens
  has_many :likes
end
