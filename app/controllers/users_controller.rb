class UsersController < ApplicationController

  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])

    # @photos = Photo.where(:user_id => @user.id)
    
    @photos = @user.photos
    @likes = @user.likes
    @comments = @user.comments
    
    render("users/show.html.erb")
  end
end    