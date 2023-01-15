class ItemsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @item = Item.new
    @topic = Topic.find(params[:topic_id])
    @items = @topic.items.includes(:user)
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @item = @topic.items.new(item_params)
    @item.save
   end

  def destroy
  end

  private
  def item_params
    params.require(:item).permit(:item).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
