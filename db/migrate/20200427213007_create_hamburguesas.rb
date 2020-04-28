class CreateHamburguesas < ActiveRecord::Migration[6.0]
  def change
    create_table :hamburguesas do |t|
      t.string :nombre
      t.integer :precio
      t.text :descripcion
      t.text :imagen
      t.text :ingredientes

      t.timestamps
    end
  end
end
