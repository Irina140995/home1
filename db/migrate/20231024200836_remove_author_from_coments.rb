class RemoveAuthorFromComents < ActiveRecord::Migration[7.0]
  def change
    remove_column :coments, :autor
  end
end
