class EventsController < ApplicationController
  def index
    # get all the events
    @events = Event.all
  end
end
