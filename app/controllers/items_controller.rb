class ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
    @list = @item.list
  end

  def new
    @item = Item.new
    @list_id = params[:list_id]
    @list = List.find(@list_id)
  end

  def edit
    @item = Item.find(params[:id])
    @list = @item.list
  end

  def create
    @item = Item.new(item_params)
    @list_id = params[:list_id]
    @list = List.find(@list_id)
    @item.list_id = @list_id
    if @item.save
      redirect_to @list
    else
      render 'new'
    end
  end

  def update
    @item = Item.find(params[:id])
    @list = List.find(params[:list_id])
    if @item.update(item_params)
      redirect_to list_path(params[:list_id])
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to list_path(params[:list_id])
  end

  private
  def item_params
    params.require(:item).permit(:name)
  end
end
