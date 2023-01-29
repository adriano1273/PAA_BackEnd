class MovieSerializer < ActiveModel::Serializer
  attributes :id, :poster, :title, :runtime, :genre, :director, :stars
end
