class CreateHerbTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :herb_types do |t|
      t.string :name, null: false, index: { unique: true }
      t.references :herb, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
