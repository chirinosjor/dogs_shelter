class ColumnNameChangeInDog < ActiveRecord::Migration[6.0]
  def change
    rename_column :dogs, :size, :dog_size
  end
end