class Profiles::TechnologiesController < ApplicationController
  def index
    @technologies = Technology.search(params)
  end

  def create
    @profile = Profile.find(params[:profile_id])
    @technology = Technology.new(technology_params)

    if @technology.save!
      redirect_to edit_profile_path(@profile)
    end
  end

  private

  def technology_params
    params.require(:technology).permit(:name, :skills_attributes => [
      :profile_id,
      :_destroy
    ])
  end
end