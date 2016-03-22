class UsersController < ApplicationController
  # Ajax validation from signup form
  def check_username
    @user = User.find_by_username(params[:user][:username])

    respond_to do |format|
      format.json { render :json => !@user }
    end
  end
end
