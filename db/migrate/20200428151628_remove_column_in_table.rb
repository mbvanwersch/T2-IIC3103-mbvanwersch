class RemoveColumnInTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :hamburguesas, :ingredientes
  end
end
