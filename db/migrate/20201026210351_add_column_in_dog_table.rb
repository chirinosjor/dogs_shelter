class AddColumnInDogTable < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :shelter, :string
  end
end
