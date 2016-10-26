require 'rails_helper'
RSpec.describe LikesController, type: :controller do
  before do
  	 @user = create_user
    @secret = @user.secrets.create(content: "secret")
    @secret2 = @user.secrets.create(content: "secret2")
    @like = Like.create(user: @user, secret: @secret)
  end
  describe "when not logged in" do
  	before do
  		session[:current_user] = nil
  	end
    it 'cannot like a secret' do
    	post :create
    	expect(response).to redirect_to('/sessions/new')
    end
    it 'cannot unlike a secret' do
    	delete :destroy, id: @like
    	expect(response).to redirect_to('/sessions/new')
    end
  end
  describe "when signed in as the wrong user" do
  	before do
  		@wrong_user = create_user 'julius', 'julius@lakers.com'
      session[:current_user] = {'id' => @wrong_user.id, 'name' => @wrong_user.name, 'email' => @wrong_user.email}
  	end
  	it 'cannot like for another user' do
  		post :create, {like: {'user' => @user, 'secret_id' => @secret2['id']}}
  		expect(Like.where(user: @user, secret: @secret2).length).to eq(0)
  	end
  	it 'cannot unlike for another user' do
  		delete :destroy, id: @like['id']
  		expect(Like.where(user: @user, secret: @secret).length).to eq(1)
  	end
  end 
end
