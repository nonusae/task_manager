class Task < ApplicationRecord
	attr_accessor :comments_attributes	
	belongs_to :user
	has_many :comments, dependent: :destroy
	validates_presence_of :description, :deadline
	accepts_nested_attributes_for :comments
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
