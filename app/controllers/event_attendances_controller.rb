class EventAttendancesController < ApplicationController
  def new
		@association = EventAttendance.new
	end
	
	def create
		@association = EventAttendance.new(event_att_params)
		if @association.save
			flash.now("Success") #ideally, perhaps, post for which inscription was made
		else
			flash.now("Error")
		end
  end

	private
	def event_att_params
    params.require(:event_attendance).permit(:attended_event_id, :attendee_id)
  end
end
