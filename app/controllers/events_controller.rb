class EventsController < ApplicationController
  def index
    # create an instance var in order to pass data to view
    @events = ['BugSmash','Hackthon','Kata Camp']
  end
end
