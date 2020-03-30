class CreateHealthBenefits < ActiveRecord::Migration[6.0]
  def change
    create_table :health_benefits do |t|
      t.string :benefit, null: false, index: { unique: true }
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
