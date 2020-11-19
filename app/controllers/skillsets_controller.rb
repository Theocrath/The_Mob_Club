class SkillsetsController < ApplicationController
  def new
    @skillset = Skillset.new
    # @user = current_user
  end

  def create
    # @user = current_user
    @skillset = Skillset.new(skillset_params_user)
    @user_has_skillset = Skillset.find_by(user_id: current_user.id)

    if @user_has_skillset.nil?
      @skillset.user = @user
    else
      @skillset.crime = Crime.last
    end

    if @skillset.save
      redirect_to profile_path, notice: 'Criminal event created.'
    else
      redirect_to profile_path, notice: 'There was a problem, please try again'
    end
  end

  # def another_new
  #   @skillset = Skillset.new
  # end

  # def another_create
  #   @user = current_user
  #   @skillset = Skillset.new(skillset_params_crime)
  #   @skillset.crime = @crime

  #   if @skillset.save
  #     redirect_to profile_path, notice: 'Skillset created for your crime!'
  #   else
  #     render :new
  #   end
  # end

  private

  def skillset_params_user
    params.require(:skillset).permit(:close_combat, :long_range_weapons, :mid_range_weapons, :explosives, :infiltration, :hacking, :lockpicking, :seduction)
  end

  def skillset_params_crime
    params.require(:skillset).permit(:close_combat, :long_range_weapons, :mid_range_weapons, :explosives, :infiltration, :hacking, :lockpicking, :seduction, :crime_id)
  end
end
