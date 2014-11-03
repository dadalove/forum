class WelcomeController < ApplicationController
  
  def index
    # @topics = Topic.all
    @topics = Topic.order("id DESC").page(params[:page]).per(15)
    @topic = Topic.new
  end

  def about
    
  end

end
