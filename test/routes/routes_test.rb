require_relative '../../app'
require 'rack/test'
require 'rspec'

describe "/" do
  include Rack::Test::Methods

  	def app
		p 'app created'
		PlaceHolderApp.new
	end

	before(:each) do
  		p 'before each'
  	end

	it "returns an image" do
	    get '/1/1'
	    p last_response.headers['Content-Type'].should eql 'image/jpeg'
	end

end
