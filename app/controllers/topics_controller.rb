class TopicsController < ApplicationController
  def index
    @topic = Topic.new
  end

  def new
    @topic = Topic.new
  end

  def create
    @room = Topic.new(topic_params)
    if @room.save
      redirect_to root_path
    end
  end

  private

  def tpic_params
    params.require(:topic).permit(:topic_item, user_ids: [])
  end

end
