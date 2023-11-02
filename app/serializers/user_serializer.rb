class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  has_many :coments
  has_many :articles
end
