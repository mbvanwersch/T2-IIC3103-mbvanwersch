class HamburguesaSerializer < ActiveModel::Serializer
  attributes :id, :nombre, :precio, :descripcion, :imagen
  #has_many :hamburguesa_ingredientes
end
