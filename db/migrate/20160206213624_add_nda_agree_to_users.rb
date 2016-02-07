class AddNdaAgreeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nda_agree, :boolean
  end
end
