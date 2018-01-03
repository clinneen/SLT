class OutagesController < ApplicationController
  #my shit here
  def results
    @outages=Outage.search([params[:searchString],params[:start_date],params[:end_date],params[:region_selection]])
    
    if @outages.blank? then
      redirect_to outages_path, notice: 'No Results'
      return
    end

    if @outages.size==1 then
      redirect_to outage_path(@outages[0].id)
    else
      render 'results'
    end 
  end

  def index
  end

  # GET /outages/1
  # GET /outages/1.json
  def show
    @outage=Outage.find(params[:id])
  end

  # GET /outages/new
  #def new
  #  @outage = Outage.new
  #end

  # GET /outages/1/edit
  def edit
    @outage=Outage.find(params[:id])
  end

  # POST /outages
  # POST /outages.json
  def create
    @outage = Outage.new(outage_params)

    respond_to do |format|
      if @outage.save
        format.html { redirect_to @outage, notice: 'Outage was successfully created.' }
        format.json { render :show, status: :created, location: @outage }
      else
        format.html { render :new }
        format.json { render json: @outage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outages/1
  # PATCH/PUT /outages/1.json
  def update
    @outage=Outage.find(params[:id])
    respond_to do |format|
      if @outage.update(outage_params)
        format.html { redirect_to @outage, notice: 'Outage was successfully updated.' }
        format.json { render :show, status: :ok, location: @outage }
      else
        format.html { render :edit }
        format.json { render json: @outage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outages/1
  # DELETE /outages/1.json
  #def destroy
  #  @outage.destroy
  #  respond_to do |format|
  #    format.html { redirect_to outages_url, notice: 'Outage was successfully destroyed.' }
  #    format.json { head :no_content }
  #  end
  #end

  private

    def outage_params
      params.require(:outage).permit(:store_id, :carrier_id, :commodity, :notes, :cause, :volume, :outage_time, :delivery_time, :reported_via, :user_id)
    end
end
