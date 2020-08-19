class AddSinhnhatToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :sinhnhat, :date
  end
end
