class CreateHerbs < ActiveRecord::Migration[6.0]
  def change
    create_table :herbs do |t|
      t.string :name, null: false, index: { unique: true }
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
