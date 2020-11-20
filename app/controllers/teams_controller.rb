class TeamsController < ApplicationController
  before_action :set_team, except: [:create]
  before_action :set_crime, except: [:update]

  def create
    @team = Team.new(team_params)
    @team.crime = @crime
    @team.user = current_user

    if @team.save
      redirect_to crime_path(@crime), notice: 'You applied to this job succesfully!'
    else
      render :new
    end
  end

  def update
       @team.status = true
       @team.save

       redirect_to crime_path(@team.crime)
  end

  def destroy
    @team.destroy
    redirect_to crime_path(@crime), notice: "#{@team.user.username} has been removed from the list..."
  end

  #  # encontrar a team presente
  #  #
  #  # o usuario presente (current_user) tem que ser o mesmo que o tipo que criou o crime
  #  # mudar o status para TRUE
  # end

  private

  def team_params
    params.require(:team).permit(:crime_id)
  end

  def set_team
    @team = Team.find(params[:id])
  end

  def set_crime
    @crime = Crime.find(params[:crime_id])
  end
end
