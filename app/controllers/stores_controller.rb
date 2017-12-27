class StoresController < ApplicationController

  def index
  end

  #Search results for multiple items.
  def results
    @stores=Store.search(params[:searchString])
    
    if @stores.blank? then
      redirect_to 'index'
      return
    end

    if @stores.size==1 then
      @store=@stores[0]
      render 'result'
    else
      render 'results'
    end 
  end

  def show
    @store=Store.find(params[:id])
  end





  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_params
      params.require(:store).permit(:site_id, :city, :state, :notes, :co_de)
    end 
end
