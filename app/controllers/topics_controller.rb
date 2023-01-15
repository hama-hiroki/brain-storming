class TopicsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @topics = Topic.includes(:user).order("created_at DESC")
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.create(topic_params)
    @topic.save
    redirect_to action: :index
    
  end

  def edit

  end

  def update
    topic = Topic.find(params[:id])
  end

  def destroy
    topic = Topic.find(params[:id])
    topic.destroy
    redirect_to action: :index
  end

  def show
  end

  private
  def topic_params
    params.permit(:topic_item).merge(user_id: current_user.id)
  end

  def item_params
    params.permit(:item)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
  
end
