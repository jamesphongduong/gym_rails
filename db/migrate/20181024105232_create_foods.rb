class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.text :description
      t.integer :calories
      t.integer :protein
      t.integer :carbs
      t.integer :fat
      t.string :serving_size
      t.string :ingredient
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
