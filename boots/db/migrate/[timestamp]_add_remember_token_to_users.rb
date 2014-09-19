class AddRememberTokenToUsers < ActiveRecord::Migration
def change
add column :users, :remember token, :string
add index :users, :remember token
end
end
