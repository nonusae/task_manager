class Task < ApplicationRecord
	belongs_to :user
	validates_presence_of :description, :deadline
	# attr_access

	def is_late?
		if Time.now > self.deadline
			return "late-task"
		end
	end
end
