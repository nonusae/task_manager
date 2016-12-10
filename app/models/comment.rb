class Comment < ApplicationRecord
	belongs_to :user 
	belongs_to :task
	validates_presence_of :content
end
