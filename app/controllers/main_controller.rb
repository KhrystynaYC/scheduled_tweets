class MainController < ApplicationController
  def index
    # flash.now[:notice] = "Logged in seccessfully"
    # flash.now[:alert] = "Invalid email or password"
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end
end
