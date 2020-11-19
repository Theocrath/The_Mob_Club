class SkillsetsController < ApplicationController
  def new
    @skillset = Skillset.new
    # @user = current_user
  end

  def create
    @user = current_user
    @skillset = Skillset.new(skillset_params_user)
    @skillset.user = @user

    if @skillset.save
      redirect_to profile_path, notice: 'Skillset created!'
    else
      render :new
    end
  end

  def another_new
    @skillset = Skillset.new
  end

  def another_create
    @user = current_user
    @skillset = Skillset.new(skillset_params_crime)
    @skillset.crime = @crime

    if @skillset.save
      redirect_to profile_path, notice: 'Skillset created for your crime!'
    else
      render :new
    end
  end

  private

  def skillset_params_user
    params.require(:skillset).permit(:close_combat, :long_range_weapons, :mid_range_weapons, :explosives, :infiltration, :hacking, :lockpicking, :seduction, :user_id)
  end

  def skillset_params_crime
    params.require(:skillset).permit(:close_combat, :long_range_weapons, :mid_range_weapons, :explosives, :infiltration, :hacking, :lockpicking, :seduction, :crime_id)
  end
end
