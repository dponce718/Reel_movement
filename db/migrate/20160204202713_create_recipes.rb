class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :preparation
      t.string :total_time
      t.string :servings
      t.text :ingredients
      t.text :code
      t.string :image

      t.timestamps null: false
    end
  end
end
