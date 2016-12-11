module ApplicationHelper
	def is_on_page?(paths)
		on_page = true

		paths.each do |path|
			on_page = false if current_page?(path)
		end

		return on_page

	end
end
