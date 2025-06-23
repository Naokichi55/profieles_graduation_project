class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
		@profile = current_user.profile.build(profile_params)
		if @profile.save
      redirect_to profile_path 
		else
      flash.now[:danger] = "プロフィールの作成に失敗した"
			render :new, status: :unprocessable_entity
		end
  end

private
	def  profile_params
		params.require(:profile).permit(:racket, :history, :play_style, :level, :generation, :gender)
	end
end
