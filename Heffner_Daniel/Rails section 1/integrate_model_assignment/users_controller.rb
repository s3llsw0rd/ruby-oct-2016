class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
    render "new"
  end

  def create
    aliases = ['Rork', 'Montfeld', 'Kerr', 'Trine', 'Lyre', 'Nova', 'Rail', 'Ruby', 'Python', 'Woll', 'Pyrhh', 'Ghoul', 'Hanselt', 'Greta']
    roles =  ['Spy', 'General', 'Paladin', 'Seer', 'Engineer', 'Quartermaster', 'Financier']
    newUser = User.create(alias:aliases[rand(0..aliases.length)]+rand(100..999).to_s, reputation:rand(5..150), role:roles[rand(0..roles.length)])
    newUser.save
    redirect_to '/users'
  end

  def show
    render json: User.find(params[:id])
  end

  def edit
    @edituser = User.find(params[:id])
  end

  def total
    numUsers = User.userTotal
    render text: "There are #{numUsers} users in the database."
  end
end
