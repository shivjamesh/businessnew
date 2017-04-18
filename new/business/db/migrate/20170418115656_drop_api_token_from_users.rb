class DropApiTokenFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :api_token
  end
end
