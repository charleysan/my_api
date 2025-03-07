class UsersController < ApplicationController
   skip_before_action :authorize_request, only: [:create]
  def index
    users = User.all
    render json: users
    # puts "------------"
    # puts @current_user.name
    # puts "--------------"
  end

  def create
    user = User.create!(name: params[:name], email: params[:email], password: params[:password], role: params[:role])
    puts "-----------------------"
    puts params
    puts "======================"
    render json: user
  end

  def promote

  end
end
