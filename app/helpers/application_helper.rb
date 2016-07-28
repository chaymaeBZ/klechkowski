module ApplicationHelper
	def message_class(message_type)
		if message_type == "success"
			"success"
		else
			"negative"
		end
	end
end

