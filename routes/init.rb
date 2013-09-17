# encoding: utf-8
$LOAD_PATH << 'lib'
#require_relative 'image'

class PlaceHolderApp < Sinatra::Base

	get '/:width/:height' do
		# width = :width.to_s.to_i
		# height = :height.to_s.to_i
		send_file File.join('images', 'example.jpg')
	end

  get '/resources' do
     result = Image.get_resources
     puts result
    return 'done'
  end

  

end
