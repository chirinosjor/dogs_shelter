class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :size
      t.integer :age
      t.string :gender
      t.text :description

      t.timestamps
    end
  end
end
