class AddIdArticleToComents < ActiveRecord::Migration[7.0]
  def change
    add_column :coments, :article_id, :string
    add_index :coments, :article_id
  end
end
