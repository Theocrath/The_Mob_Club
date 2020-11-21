class SkillsetsController < ApplicationController
  before_action :set_skillset, only: [:edit, :update]

  def new
    @skillset = Skillset.new
    @user = current_user
  end

  def create
    @user = current_user
    @skillset = Skillset.new(skillset_params)
    @user_has_skillset = Skillset.find_by(user_id: @user.id)

    if @user_has_skillset.nil?
      @skillset.user = @user
    else
      @skillset.crime = Crime.last
    end

    if @skillset.save
      if @skillset.crime.nil?
        redirect_to profile_path
      else
        redirect_to crime_path(@skillset.crime.id)
      end
    else
      redirect_to profile_path, notice: 'There was a problem, please try again'
    end
  end

  def edit
  end

  def update
    @user_skillset.update(skillset_params)

    if @user_skillset.save
      redirect_to profile_path, notice: 'You updated your skillset'
    else
      render :new
    end
  end

  private

  def skillset_params
    params.require(:skillset).permit(:close_combat, :long_range_weapons, :mid_range_weapons, :explosives, :infiltration, :hacking, :lockpicking, :seduction)
  end

  def set_skillset
    @skillset = Skillset.find(params[:id])
  end
end
