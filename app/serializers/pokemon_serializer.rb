class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :num, :name, :img, :height, :weight
end
