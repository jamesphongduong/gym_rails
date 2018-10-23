class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :type_of_dish
      t.integer :calories
      t.integer :protein
      t.integer :carbs
      t.integer :fat
      t.text :description
      t.text :serving_size_and_ingredients
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
