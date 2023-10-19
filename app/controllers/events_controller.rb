class EventsController < ApplicationController
  before_action :authenticate_user!, except: :index
	def index
		@events = Event.all
	end

  def new
    @event = Event.new
  end

  def create
    # @event = Event.new(event_params)
    @event = current_user.created_events.build(event_params)
  
    if @event.save
        redirect_to events_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def event_params
    params.require(:event).permit(:title, :when)
  end
end
