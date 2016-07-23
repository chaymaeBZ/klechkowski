module UsersHelper
require 'uri'


	# user image
	def gravatar_for(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_d = URI.encode( 'https://s3.amazonaws.com/FringeBucket/default-user.png' )
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.png?s=400?d=#{gravatar_d}"
		image_tag(gravatar_url, alt: "#{user.name}", class: "gravatar", class: "ui small centered circular image")
	end
	def message_class(message_type)
		if message_type == "success"
			"success"
		else
			"negative"
		end
	end
end
