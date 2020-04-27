class CreateHamburguesas < ActiveRecord::Migration[6.0]
  def change
    create_table :hamburguesas do |t|
      t.integer :id_hamburguesa
      t.string :nombre
      t.integer :precio
      t.text :descripcion
      t.text :imagen

      t.timestamps
    end
  end
end
