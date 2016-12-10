class Task < ApplicationRecord
	belongs_to :user
	has_many :comments
	validates_presence_of :description, :deadline
	# attr_access

	def is_late?
		if Time.now > self.deadline
			return "late-task"
		end
	end

	def self.search(term)
		if term 
			where("description LIKE ?","%#{term}%")
		else
			all
		end
	end

end
