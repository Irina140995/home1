class LikesController < ApplicationController

  def new
    @like = Like.new(like_params)
    @like.save
      if @like.save
        article = @like.article
        article.likes_article = (article.likes_article || 0) + 1
        article.save
        render json: @like
      else
        render json: "Like not saved."
      end
  end

  def destroy
    @like = Like.find_by(like_params)
    @like.destroy

      if @like.destroy
        likes_article = (likes_article || 1) - 1
        render json: "Like delete"
      else
        render json: "Like not delete."
      end
  end


  private

  def like_params
    params.require(:likes).permit(:article_id, :user_id)
  end

end
