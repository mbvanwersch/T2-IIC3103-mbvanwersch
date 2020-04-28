class Ingrediente < ApplicationRecord
  has_many :ingrediente_en_hamburguesas
  has_many :hamburguesas, :through => :ingrediente_en_hamburguesas
end
