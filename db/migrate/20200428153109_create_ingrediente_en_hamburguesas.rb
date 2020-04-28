class CreateIngredienteEnHamburguesas < ActiveRecord::Migration[6.0]
  def change
    create_table :ingrediente_en_hamburguesas do |t|
      t.references :ingrediente, null: false, foreign_key: true
      t.references :hamburguesa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
