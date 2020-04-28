class IngredienteEnHamburguesa < ApplicationRecord
  belongs_to :ingrediente
  belongs_to :hamburguesa
end
