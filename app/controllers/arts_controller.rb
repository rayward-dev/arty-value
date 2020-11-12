class ArtsController < ApplicationController

  def index
    @arts = Art.order('id ASC').limit(20)
  end

  def show
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.new(art_params)
    @art.save
  end
  
  private
  
    def art_params
      params.require(:art).permit(:title, :image_url).merge(user_id: current_user.id)
    end
  
end
