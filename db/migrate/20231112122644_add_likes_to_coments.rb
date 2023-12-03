class AddLikesToComents < ActiveRecord::Migration[7.0]
  def change
    add_column :coments, :likes_coments, :integer
  end
end
