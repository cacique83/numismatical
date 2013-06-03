require_relative '../../config/initializer'
require_relative '../models/message'

module Site::Controllers::Messages
		def self.registered(app)
			app.post '/messages' do
   				message = Site::Models::Message.new(params[:email], params[:subject], params[:message])
   				message.send
    		end
	
		end
end