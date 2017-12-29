class StoresController < ApplicationController

  def index
  end

  #Search results for multiple items.
  def results
    @stores=Store.search(params[:searchString])
    
    if @stores.blank? then
      redirect_to stores_path, notice: 'No Results'
      return
    end

    if @stores.size==1 then
      @store=@stores[0]
      redirect_to store_path(@store.id)
    else
      render 'results'
    end 
  end

  def show
    @store=Store.find(params[:id])
  end

  def edit
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_params
      params.require(:store).permit(:site_id, :city, :state, :notes, :co_de)
    end 
end
