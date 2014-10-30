class TopicsController < ApplicationController
  
  before_action :authenticate_user!

  def index
    redirect_to root_path
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.user = current_user

    if @topic.save
      redirect_to root_path
    else
      render :new
    end  
  end

  def show
    @topic = Topic.find(params[:id])
    @reply = Reply.new
  end


  def destroy
    @topic = Topic.find(params[:id])
    if @topic.user == current_user
    @topic.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end


  private

  def topic_params
    params.require(:topic).permit(:title,:date,:content)
  end

  



end