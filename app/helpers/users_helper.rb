module UsersHelper

	# user image
	def gravatar_for(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		d = "mm"
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=600&d=mm"
		image_tag(gravatar_url, alt: "#{user.name}")
	end

	def header_text(update)
		update ? "Update your profile" : "خاص بموظفي الولاية" 
	end

	def form_button_text(update)
		if !update
			yield "Create account" 
		else
			yield "Save changes" 
		end
	end
	
end
