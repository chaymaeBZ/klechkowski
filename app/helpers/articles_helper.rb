module ArticlesHelper
	def gen_color(i)
		if i%3 == 0
			"blue"
		elsif i%3 == 1
			"teal"
		else
			"olive"
		end
	end
				
end
