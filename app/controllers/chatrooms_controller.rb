class ChatroomsController < ApplicationController
  def index
    @chatroom = Chatroom.all
  end

  def new
    @crime = Crime.find(params[:crime_id])
    @chatroom = Chatroom.new
  end

  def create
    @crime = Crime.find(params[:crime_id])
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.name = @crime.title
    # @crime = Crime.find(params[:crime_id])
    if @chatroom.save
      redirect_to crime_chatrooms_path, notice: 'Chatroom created.'
    else
      render "chatrooms/show"
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
