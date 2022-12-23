class TopicsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    Topic.create(topic_params)
  end

  def edit
  end

  def update
    topic = Topic.find(params[:id])
  end

  def destroy
    topic = Topic.find(params[:id])
    topic.destroy
  end

  def show
  end

  private
  def topic_params
    params.permit(:topic_item).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
  
end
