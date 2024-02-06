class Admin::EventsController < ApplicationController
  def edit
  end

  def index
    @events = Event.page(params[:page]).order(created_at: :desc)
  end

  def new
    @event = Event.new
    @organizers = Organizer.all
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to admin_event_path(@event.id)
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:organizer_id, :name, :introduction, :date, :place, :schedule, :number_of_people, :is_recruiting, :image)
  end
end
