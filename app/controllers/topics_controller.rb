class TopicsController < ApplicationController
  
  before_action :authenticate_user!, only:[:new,:create,:destroy] 

  # def index
  #   @topics = Topic.all
  #   # @topic = Topic.new
  # end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
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
    params.require(:topic).permit(:title,:date,:category,:content)
  end

  



end