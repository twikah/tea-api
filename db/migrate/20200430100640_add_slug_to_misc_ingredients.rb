class AddSlugToMiscIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :misc_ingredients, :slug, :string
    add_index :misc_ingredients, :slug, unique: true
  end
end
