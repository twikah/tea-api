class CreateHerbVarieties < ActiveRecord::Migration[6.0]
  def change
    create_table :herb_varieties do |t|
      t.string :name, null: false, index: true
      t.string :region
      t.references :herb_type, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
