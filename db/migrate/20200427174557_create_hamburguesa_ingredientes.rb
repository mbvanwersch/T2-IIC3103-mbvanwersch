class CreateHamburguesaIngredientes < ActiveRecord::Migration[6.0]
  def change
    create_table :hamburguesa_ingredientes do |t|
      t.integer :id_hamburguesa
      t.string :id_ingrediente_integer

      t.timestamps
    end
  end
end
