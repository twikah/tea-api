class AddSlugToHerbTypes < ActiveRecord::Migration[6.0]
  def change
    add_column :herb_types, :slug, :string
    add_index :herb_types, :slug, unique: true
  end
end
