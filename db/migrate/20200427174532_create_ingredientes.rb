class CreateIngredientes < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredientes do |t|
      t.integer :id_ingrediente
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
