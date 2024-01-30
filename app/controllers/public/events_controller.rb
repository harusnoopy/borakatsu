class Public::EventsController < ApplicationController
  def index
    @events = Event.page(params[:page]).order(created_at: :desc)
  end

  def show
  end
end
