class ComentsController < ApplicationController
  before_action :set_coment, only: %i[ show update destroy ]

  def index
    @coments = Coment.all

    render json: @coments
  end

  def show
    render json: @coments do serializer ComentSerializer end
  end

  def create
    @coments = Coment.new(coment_params)

    if @coments.save
      render json: @coments, status: :created, location: @coments
    else
      render json: @coments.errors, status: :unprocessable_entity
    end
  end

  def update
    if @coments.update(coment_params)
      render json: @coments
    else
      render json: @coments.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @coments.destroy
  end

  private
    def set_coment
      @coments = Coment.find(params[:id])
    end

    def coment_params
      params.require(:coment).permit(:text, :article_id, :user_id)
    end
end
