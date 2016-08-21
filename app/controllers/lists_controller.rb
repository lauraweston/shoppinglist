class ListsController < MustBeLoggedInController
  def index
    @lists = List.where({ owner_id: owner_id })
  end
  
  def show
    @list = List.find(params[:id])
    @items = @list.items
  end
  
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.owner_id = owner_id
    
    if @list.save
      redirect_to @list
    else
      render 'new'
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  private
    def list_params
      params.require(:list).permit(:name)
    end
    
    def owner_id
      session[:userinfo]["uid"]
    end
end
