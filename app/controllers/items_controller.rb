class ItemsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @items = Item.includes(:user).order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    @item.save
    redirect_to action: :index
  
  end

  def edit
    
  end

  def update
    item = Topic.find(params[:id])
  end

  def destroy
    item = Topic.find(params[:id])
    item.destroy
    redirect_to action: :index
  end

  def show
  end

  private
  def item_params
    params.permit(:item).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
