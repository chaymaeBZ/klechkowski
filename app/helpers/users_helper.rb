module UsersHelper

	# user image
	def gravatar_for(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.png?s=400"
		image_tag(gravatar_url, alt: "#{user.name}", class: "ui small centered circular image")
	end
	
end
