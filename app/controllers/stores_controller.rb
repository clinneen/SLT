class StoresController < ApplicationController

  def index
  end

  #Search results for multiple items.
  def results
    @stores=Store.where("site_id like ?","%#{params[:searchString]}%")
    
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
end
