require_relative  "../../config/initializer"

class Site::Models::Message

	def initialize(email, subject, body)
	  @email = email
	  @subject = subject
	  @body = body
	end

	def send
		Pony.mail(from: @email, subject: @subject, body: @body)
	end

end


		