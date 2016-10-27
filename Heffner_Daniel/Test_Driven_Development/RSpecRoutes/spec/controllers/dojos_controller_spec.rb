require 'spec_helper'

RSpec.describe DojosController, type: :controller do

  describe "routing" do
    it 'routes to #index' do
      expect(:get => "/").to route_to('dojos#index')
    end
    it 'routes to #world' do
      expect(:post => "/hello").to route_to(:controller => "dojos", :action => "world")
    end
    it 'routes to #ninjas' do
      expect(:get => "/ninjas").to route_to('dojos#ninjas')
    end
  end

end
