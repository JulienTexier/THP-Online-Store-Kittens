class UserPicsController < ApplicationController
	def create
    @user = User.find(params[:profile_id])
    @user.user_pic.attach(params[:user_pic])
    redirect_to(edit_profile_path(@user))
  end
end
