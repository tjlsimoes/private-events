class Event < ApplicationRecord
  has_many :event_attendances, foreign_key: :attended_event_id
	has_many :attendees, through: :event_attendances, source: :attendee
	
	belongs_to :creator, class_name: "User"

	def self.past
		where(when: ..Time.now)
	end

	def self.future
		where(when: Time.now..)
	end
end
