class CreateDummies < ActiveRecord::Migration[5.2]
  def change
    create_table :dummies do |t|
      t.string :page

      t.timestamps
    end
  end
end
