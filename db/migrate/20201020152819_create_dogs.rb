class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :dog_size
      t.integer :age
      t.integer :gender
      t.text :description

      t.timestamps
    end
  end
end
