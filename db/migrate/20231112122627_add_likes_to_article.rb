class AddLikesToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :like_articles, :integer
  end
end
