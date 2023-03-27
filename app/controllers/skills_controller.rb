class SkillsController < ApplicationController
  def create
    @profile = Profile.find(params[:profile_id])
    @skill = @profile.skills.create(skill_params)

    redirect_to edit_profile_path(@profile)
  end
  
  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy

    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def skill_params
    params.require(:skill).permit(:technology_id)
  end
end