class RegistrationsController < ApplicationController
  def new
    # Instance variable is available also in views
    @user = User.new
  end

  def create
    #params
    # -> {"authenticity_token"=>"bNxY82LbiuLV9FQVKALAw0SA5haF+ttepqr1zQGZ4/fWLNr9nAFcIZyfPOO4H0pVLblmDveY73EeZG5DhZbTwQ==", "user"=>{"email"=>"dadada@da.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Sign Up"}

    #params[:user]
    # -> {"email"=>"dadada@da.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Sign Up"}

    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Great Successs!"
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
