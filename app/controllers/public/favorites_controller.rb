class Public::FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    @event = Event.find(params[:event_id])
    favorite = Favorite.new(user_id: current_user.id, event_id: params[:event_id])
    favorite.save
  end

  def destroy
    @event = Event.find(params[:event_id])
    favorite = Favorite.find_by(user_id: current_user.id, event_id: params[:event_id])
    favorite.destroy
    respond_to do |format|
      format.js
      format.html { redirect_html_response }
    end
  end

  def index
    @favorites = current_user.favorites.page(params[:page]).order(created_at: :desc)
  end

  private

  def redirect_html_response
    redirect_to request.referer
  end

end
