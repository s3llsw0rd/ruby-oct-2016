require "spec_helper"
describe UsersController do
	it "get '/' routes to users#new" do
		expect(:get => "/").to route_to('users#new')
	end
	it "post '/' routes to users#create" do
		expect(:post => "/").to route_to('users#create')
	end

end