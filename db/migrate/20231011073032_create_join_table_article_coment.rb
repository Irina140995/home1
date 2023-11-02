class CreateJoinTableArticleComent < ActiveRecord::Migration[7.0]
 def change
    create_join_table :articles, :coments do |t|
      # t.index [:article_id, :coment_id]
      #t.index [:coment_id, :article_id]
    end
  end
end
    