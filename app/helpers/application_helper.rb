module ApplicationHelper
	def not_on_page?(path)
		"disabled" unless current_page?(path)
	end
end
