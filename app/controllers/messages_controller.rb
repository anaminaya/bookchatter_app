class MessagesController < ApplicationController
  def index
    @messages = Message.all

  end

  def new
    message = Message.new
      render "new.html.erb"

  end

  def show
      @message = Message.find_by(id: params[:id])
  end

  def create
    message = Message.create(
    title:params[:title],
    content:params[:content]
    )


    redirect_to "/messages/#{@message.id}"
  end

  def edit
    @message = Message.find_by(id: params[:id])
  end

  def update
    @message = Message.find_by(id: params[:id])
    @message.update(
    content:params[:content],
    title:params[:title],
    )
    redirect_to "/messages/#{@message.id}"
  end

  def destroy
    @message = Message.find_by(id: params[:id])
    @message.destroy
  end


end
