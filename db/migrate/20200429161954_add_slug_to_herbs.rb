class AddSlugToHerbs < ActiveRecord::Migration[6.0]
  def change
    add_column :herbs, :slug, :string
    add_index :herbs, :slug, unique: true
  end
end
