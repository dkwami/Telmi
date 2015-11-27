class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :firstName
      t.string :lastName
      t.string :email

      t.timestamps null: false
    end
  end
end
