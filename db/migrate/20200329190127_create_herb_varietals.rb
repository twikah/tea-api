class CreateHerbVarietals < ActiveRecord::Migration[6.0]
  def change
    create_table :herb_varietals do |t|
      t.string :herb_type
      t.string :name
      t.references :herb, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
