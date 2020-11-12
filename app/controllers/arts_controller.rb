class ArtsController < ApplicationController
  before_action :authenticate_user!, except: :index
  
  def index
    @arts = Art.order('id ASC').limit(50)
  end

  def show
    @art = Art.find(params[:id])
    @comments = @art.comments.includes(:user)
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.new(art_params)
    @art.save
  end

  def update
    @art = Art.find(params[:id])
    @art.update(update_art_params)
    redirect_to request.referer
  end
  
  private
  
    def art_params
      params.require(:art).permit(:title, :image_url, :description, :price, :value_point, :status).merge(user_id: current_user.id)
    end

    def update_art_params
      params.require(:art).permit(:title, :image_url, :description, :price, :value_point, :status).merge(user_id: current_user.id)
    end
  
end