class Public::FavoritesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    favorite = Favorite.new(user_id: current_user.id, event_id: params[:event_id])
    favorite.save
    redirect_to request.referer
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, event_id: params[:event_id])
    favorite.destroy
    redirect_to request.referer
  end

  def index
    @favorites = current_user.favorites.page(params[:page]).order(created_at: :desc)
  end

end
