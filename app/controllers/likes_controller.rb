class LikesController < ApplicationController
    before_action :set_article, only: %i[ show update destroy ]
    
    def show
      render json: @like do serializer LikeSerializer
      end
    end
  
    def like_articles
      @like = Like.new(article_id)
      if @like.save
        articles.likes = articles.likes + 1
        render json: like_articles.count
      else
       render json: like_articles.count
      end
    end

    def likes_coments
      @like = Like.new(coment_id)
      if @like.save
        likes_coments + 1
        render json: likes_coments.count
      else
        render json: likes_coments
     end
    end

  

    def destroy
      @like.destroy
      likes-1
      render json: likes.count
    end

  end
  