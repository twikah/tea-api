class CreateMiscIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :misc_ingredients do |t|
      t.string :name, null: false, index: { unique: true }
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
