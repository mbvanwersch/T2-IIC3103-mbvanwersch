class RemoveColumnInTableIngredientes < ActiveRecord::Migration[6.0]
  def change
    remove_column :ingredientes, :path
  end
end
