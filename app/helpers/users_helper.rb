module UsersHelper

	# user image
	def gravatar_for(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		d = "mm"
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.png&s=400?d=wavatar"
		image_tag(gravatar_url, alt: "#{user.name}")
	end

	def header_text
		!current_user ? "خاص بموظفي الولاية" : "Update your profile"
	end

	def form_button_text
		if !current_user
			yield "Create my account" 
		else
			yield "Save changes" 
		end
	end
	
end
