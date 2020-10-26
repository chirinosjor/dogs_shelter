class DeleteWrongColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :shelters, :dog_id
  end
end
