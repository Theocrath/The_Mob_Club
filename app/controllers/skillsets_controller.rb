class SkillsetsController < ApplicationController
  before_action :skillset_params, only: [:edit, :update, :crime_skillset_edit]

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

  def edit

  end

  def update
    # preciso do current crime
    # @current_crime = Crime.find(params[:id])
    @user_skillset = current_user.skillset
     
   @user_skillset.update(skillset_params_user)
   if @user_skillset.save
   redirect_to profile_path, notice: 'You updated your skillset'
  
   else
    render :new
   end
  end

 # below are custom actions for the skillset related to the crime 

  def crime_skillset_new
    @skillset = Skillset.new
  end

  def crime_skillset_create
    @user = current_user
    @skillset = Skillset.new(skillset_params_crime)
    @skillset.crime = @crime

    if @skillset.save
      redirect_to profile_path, notice: 'Skillset created for your crime!'
    else
      render :new
    end
  end

  def crime_skillset_edit
  end

  #def crime_skillset_update
   # raise

  #end

  private

  def skillset_params_user
    params.require(:skillset).permit(:close_combat, :long_range_weapons, :mid_range_weapons, :explosives, :infiltration, :hacking, :lockpicking, :seduction, :user_id)
  end

  def skillset_params_crime
    params.require(:skillset).permit(:close_combat, :long_range_weapons, :mid_range_weapons, :explosives, :infiltration, :hacking, :lockpicking, :seduction, :crime_id)
  end

  def skillset_params
    @skillset = Skillset.find(params[:id])
  end
end
