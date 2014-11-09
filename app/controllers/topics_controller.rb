class TopicsController < ApplicationController
  
  before_action :authenticate_user!                    #使用任何功能前都要先登入

  def index
    redirect_to root_path                              #回到welcome首頁
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
    @reply = Reply.new                                 #各個主題都有回復表單
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
    params.require(:topic).permit(:title,:date,:content, :category_ids => [])
  end

  
end