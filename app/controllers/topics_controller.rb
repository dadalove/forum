class TopicsController < ApplicationController
  
  before_action :authenticate_user!

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

  end


  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_path
  end


  private

  def topic_params
    params.require(:topic).permit(:title,:date,:category,:content)
  end





end