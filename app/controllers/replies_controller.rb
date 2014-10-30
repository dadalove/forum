class RepliesController < ApplicationController

  before_action :authenticate_user!

  before_action :set_topic

  def create
    @reply = @topic.replies.build(reply_params)

    if @reply.save
      redirect_to topic_path(@topic)
    else
      render :new
    end  
  end

  private

  def set_topic
    @topic = Topic.find( params[:topic_id] )
  end
  
  def reply_params
    params.require(:reply).permit(:content)
  end


end
