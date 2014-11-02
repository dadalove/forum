class WelcomeController < ApplicationController
  
  def index
    # @topics = Topic.all
    @topics = Topic.order("id DESC").page(params[:page]).per(10)
  end

  def about
    
  end

end
