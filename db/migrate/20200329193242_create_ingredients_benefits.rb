class CreateIngredientsBenefits < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients_benefits do |t|
      t.references :benefitable, polymorphic: true,
                                 index: { name: "benefitable_index" }
      t.references :health_benefit, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
