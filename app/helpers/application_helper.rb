module ApplicationHelper
	def message_class(message_type)
		if message_type == "success"
			"success"
		elsif message_type == "info"
			"info"
		elsif message_type == "warning"
			"warning"
		else
			"negative"
		end
	end

	def arabic?
		params[:local] == 'ar'
	end
	
end

