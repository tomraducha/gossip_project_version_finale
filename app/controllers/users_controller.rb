class UsersController < ApplicationController

  def new
    @user = User.new
    @cities = cities_list
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(post_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Welcome Bro !"
    else
      flash[:messages] = @user.errors.full_messages
      @cities = cities_list
      render :new
    end
  end

  
end