class WelcomeController < ApplicationController
  
  def index

    if params[:order] == "time"
      @topics = Topic.order("created_at DESC").page(params[:page]).per(15)       #發文時間排序遞降
    else
      @topics = Topic.order("id DESC").page(params[:page]).per(15)               #發文主題排序遞降
    end

    
    @topic = Topic.new
  end

  def about                                                                      #about頁面
    
  end

end
