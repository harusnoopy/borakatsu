class Public::OrganizersController < ApplicationController
  def show
    @organizer = Organizer.find(params[:id])
  end
end
