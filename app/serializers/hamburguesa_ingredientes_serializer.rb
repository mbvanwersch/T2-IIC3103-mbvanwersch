class HamburguesaIngredientesSerializer < ActiveModel::Serializer
  attributes :path
  belongs_to :hamburguesa
end
