require 'sinatra'
require 'pony'
require './config/initializer'
require 'sinatra/assetpack'
require_relative 'app/controllers/messages'
require_relative 'app/controllers/pages'

module Site
 class Server < Sinatra::Application
 	set :root, File.join(File.dirname(__FILE__), 'app')
 	
 	Pony.options = {
 		:to => 'admin@site.com',
 		:via => :smtp, 
 		:via_options => {
 			:address => 'localhost',
 			:port => '1025'
 		}
 	}
 	
 	register Sinatra::AssetPack

  assets {
    serve '/js',     from: 'assets/js'        # Default
    serve '/css',    from: 'assets/css'       # Default
    serve '/images', from: 'assets/images'    # Default

    # The second parameter defines where the compressed version will be served.
    # (Note: that parameter is optional, AssetPack will figure it out.)
    js :app, '/js/app.js', [
      '/js/jquery.js',
      '/js/bootstrap.js',
      '/js/application.js',
      '/js/base.js'
      
    ]

    css :application, '/css/application.css', [
      '/css/bootstrap.css',
      '/css/bootstrap-responsive.css',
      '/css/screen.css'
    ]

    js_compression  :jsmin    # :jsmin | :yui | :closure | :uglify
    css_compression :simple   # :simple | :sass | :yui | :sqwish
  }







	 register Site::Controllers::Pages
 	register Site::Controllers::Messages

	end
end
	

  
