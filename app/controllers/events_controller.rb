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
  
  def update
    @event= Event.find(params[:id])
    event_params = params.require(:event).
      permit(:name,:description,:location,:price,:starts_at)
    @event.update(event_params)
    # render 'show'  render show template,not good
    # redirect_to event_path(@event) very good or better
    redirect_to @event #rails knows where to redirect cause @event is the current object
  end

  def new
    @event=Event.new
  end

  def create
    event_params = params.require(:event).
            permit(:name,:description,:location,:price,:starts_at)
    @event=Event.new(event_params)
    # So far we have the event in @event
    # Time to save it in the database
    @event.save
    # show the thing we just created
    redirect_to @event
  end

end
