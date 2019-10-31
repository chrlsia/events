class EventsController < ApplicationController
  def index
    # get all the events
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end
  
end
