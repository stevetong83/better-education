class MessagesController < ApplicationController

  def new
    @page_title = "Contact Us"
    @message = Message.new
  end

  def create
    @message = Message.create param[:message]
    if @message.save
      redirect_to root_path, notice: "Thanks"
    else
      render :new
    end
  end

end
