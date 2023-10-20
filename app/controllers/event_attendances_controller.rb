class EventAttendancesController < ApplicationController
  def new
		@association = EventAttendance.new
	end
	
	def create
		@association = EventAttendance.new(attendee_id: params[:attendee_id],
																attended_event_id: params[:attended_event_id])
		if @association.save
			flash[:notice] = "Your attendance is expected!"
			redirect_to event_path(params[:attended_event_id])
		else
			flash[:alert] = "An error occured, please try again."
			redirect_to event_path(params[:attended_event_id])
		end
  end
end
