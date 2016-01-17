class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :title
      t.string :type
      t.text :description
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :recommendations, :users
  end
end
