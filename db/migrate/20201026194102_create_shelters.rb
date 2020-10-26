class CreateShelters < ActiveRecord::Migration[6.0]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :address
      t.string :description
      t.integer :capacity
      t.references :dog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
