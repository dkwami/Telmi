class AddPreferencesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :read_interest,   :boolean, default: false
    add_column :users, :watch_interest,  :boolean, default: false
    add_column :users, :listen_interest, :boolean, default: false
    add_column :users, :play_interest,   :boolean, default: false
    add_column :users, :eat_interest,    :boolean, default: false
    add_column :users, :travel_interest, :boolean, default: false
    add_column :users, :other_interest,  :string
  end
end
