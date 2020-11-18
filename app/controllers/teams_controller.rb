class TeamsController < ApplicationController
  def create
    @crime = Crime.find(params[:crime_id])
    @team = Team.new(team_params)
    @team.crime = @crime
    @team.user = current_user

    if @team.save
      redirect_to profile_path, notice: 'You applied to this job succesfully!'
    else
      render :new
    end
  end

  private

  def team_params
    params.require(:team).permit(:crime_id)
  end
end
