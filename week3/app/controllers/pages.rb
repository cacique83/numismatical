require_relative '../../config/initializer'

module Site::Controllers::Pages
	def self.registered(app)
		app.get '/' do
			@title = "Home"
			erb :index
		end

		app.get '/contact' do
         @title = "contact"
         erb  :contact
     	end
	end
end