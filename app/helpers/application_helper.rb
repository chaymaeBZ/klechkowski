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


	def arabic?(str)
		k = 0
		l = 0
		str.split(//).each do |c|
			if 1536 <= c.ord and c.ord <= 1791
				k += 1
			end
			l += 1
		end
		if k > 0.6 * l
			return true
		end
		return false
	end

	
end

