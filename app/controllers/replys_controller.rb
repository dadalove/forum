class ReplysController < ApplicationController

  

  def create
    @reply = Reply.new(reply_params)
    if @reply.save
      redirect_to topic_path
    else
      render :new
    end  
  end



  private

  def topic_params
    params.require(:reply).permit(:content)
  end


end
