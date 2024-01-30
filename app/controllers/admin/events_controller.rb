class Admin::EventsController < ApplicationController
  def edit
  end

  def index
    @events = Event.page(params[:page]).order(created_at: :desc)
  end

  def new
  end

  def show
  end
end
