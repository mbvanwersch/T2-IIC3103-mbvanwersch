class HamburguesaSerializer < ActiveModel::Serializer
  attributes :id, :nombre, :precio, :descripcion, :imagen
  has_many :ingrediente_en_hamburguesas, key: 'ingredientes'
end
