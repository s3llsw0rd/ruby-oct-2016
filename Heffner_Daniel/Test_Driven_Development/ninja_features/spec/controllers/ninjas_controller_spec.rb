require 'spec_helper'
RSpec.describe NinjasController do

	describe "routing" do
		it "get '/' should route to ninjas#new" do
			expect(:get => "/").to route_to('ninjas#new')
		end

		it "post '/new' should route to ninjas#create" do
			expect(:post => "/new").to route_to('ninjas#create')
		end

		it "get '/success' should route to ninjas#show" do
			expect(:get => "/success").to route_to('ninjas#show')
		end
	end

end