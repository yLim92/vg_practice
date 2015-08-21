class AddUserIdToStuff < ActiveRecord::Migration
  def change
    add_column :stuffs, :user_id, :integer
  end
end
