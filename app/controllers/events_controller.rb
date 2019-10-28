class EventsController < ApplicationController
  def index
    # get all the events
    @events = Event.all
  end

  def show
    fail
    @event = Event.find(1)
  end
  
end
