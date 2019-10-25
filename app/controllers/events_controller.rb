class EventsController < ApplicationController
  def index
    # create an instance var in order to pass data to view
    @time = Time.now
  end
end
