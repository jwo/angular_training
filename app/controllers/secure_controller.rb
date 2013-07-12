class SecureController < ApplicationController
  def show
    @user = current_user || User.new
  end
end
