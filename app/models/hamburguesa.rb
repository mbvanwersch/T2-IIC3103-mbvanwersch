class Hamburguesa < ApplicationRecord
  has_many :ingrediente_en_hamburguesas
  has_many :ingredientes, :through => :ingrediente_en_hamburguesas
end
