class ComentSerializer < ActiveModel::Serializer
  attributes :text

  belongs_to :user
end
