class EventsController < ApplicationController
  def index
    # get all the events
    @events = Event.all
  end

  def show
    @event = Event.find(1)
  end
  
end
