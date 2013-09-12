require 'sinatra/base'
require 'json'

require_relative 'routes/init'

class PlaceHolderApp < Sinatra::Base

  configure :development do
   
  end

  configure :production do
    
  end

end
