class ChangeDataTypeToInteger < ActiveRecord::Migration[6.0]
  def up
    change_column :dogs, :size, :integer
    change_column :dogs, :gender, :integer
  end

  def down
    change_column :dogs, :size, :string
    change_column :dogs, :gender, :string
  end
end