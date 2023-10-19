class EventAttendancesController < ApplicationController
  def create
		@association = EventAttendance.new(attended_event_id: params[:event_id], 
																			attendee_id: params[:attendee_id])
		if association.save
			redirect_to events_path #ideally, perhaps, post for which inscription was made
		else
			render "events/index", status: :unprocessable_entity
		end
  end
end
