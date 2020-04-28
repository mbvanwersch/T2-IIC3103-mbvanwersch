class AddColumnInTable < ActiveRecord::Migration[6.0]
  def change
    add_column :ingrediente_en_hamburguesas, :path, :text
  end
end
