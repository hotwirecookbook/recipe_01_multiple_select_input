class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def edit
    @profile = Profile.includes(:skills).find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])

    if @profile.update(profile_params)
      redirect_to @profile
    else
      render 'edit'
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :job_title)
  end
end