class RegistrationsController < ApplicationController
  def new
    # Instance variable is available also in views
    @user = User.new
  end
end