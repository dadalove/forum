class RepliesController < ApplicationController

  before_action :authenticate_user!

  before_action :set_topic

  def create
    @reply = @topic.replies.build(reply_params)
    @reply.user = current_user

    if @reply.save
      redirect_to topic_path(@topic)
    else
      render :new
    end  
  end


  def destroy
    @reply = Reply.find(params[:id])
    if @reply.user == current_user
    @reply.destroy
      redirect_to topic_path(@topic)
    else
      redirect_to topic_path(@topic)
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
