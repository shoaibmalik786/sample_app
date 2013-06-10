module UsersHelper
	# Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-prn1/16326_487980044572819_1432635398_n.jpg"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
