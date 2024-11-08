class UsersController < ApplicationController

  def index
    @user = User.all
    render :index
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def create
    @user = User.create(
      name: params[:name],
      email: params[:email],
      image_url: params[:image_url],
    )
    render :show
  end

  def destroy
    @user = User.find_by_id(id: params[:id])
    @user.destroy
    render json: {message: "account has been deleted successfully"}
  end

  def update 
    @user = User.find_by_id(params[:id])
    @euser.update(
      name: params[:name] || @user.name,
      email: params[:email] || @user.email,
      image_url: params[:image_url] || @user.image_url,
    )
    render :show
  end
end
