class ChatroomsController < ApplicationController
  before_action :set_crime, only: [:new, :create, :show]
  before_action :set_chatroom, only: [:show, :destroy]

  def new
    @chatroom = Chatroom.new
  end

  def create
    @crime = Crime.find(params[:crime_id])
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.name = @crime.title
    @chatroom.crime_id = @crime.id

    if @chatroom.save
      redirect_to crime_chatroom_path(@crime, @chatroom), notice: 'Chatroom created.'
    else
      redirect_to profile_path, notice: 'Failed to initialize chatroom.'
    end

  end

  def show
    # @crime = Crime.find(params[:crime_id])
    # @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @message.user = current_user
  end

  def destroy
    # @chatroom = Chatroom.find(params[:id])
    @chatroom.destroy
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end

  def set_crime
    @crime = Crime.find(params[:crime_id])
  end

  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
  end
end
