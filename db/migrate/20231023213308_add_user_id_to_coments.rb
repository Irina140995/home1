class AddUserIdToComents < ActiveRecord::Migration[7.0]
  def change
    add_column :coments, :user_id, :integer
  end
end
