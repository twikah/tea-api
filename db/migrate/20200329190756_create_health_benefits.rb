class CreateHealthBenefits < ActiveRecord::Migration[6.0]
  def change
    create_table :health_benefits do |t|
      t.string :benefit
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
