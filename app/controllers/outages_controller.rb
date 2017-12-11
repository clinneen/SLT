class OutagesController < ApplicationController
  before_action :set_outage, only: [:show, :edit, :update, :destroy]

  # GET /outages
  # GET /outages.json
  def index
    @outages = Outage.all
  end

  # GET /outages/1
  # GET /outages/1.json
  def show
  end

  # GET /outages/new
  def new
    @outage = Outage.new
  end

  # GET /outages/1/edit
  def edit
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
  def destroy
    @outage.destroy
    respond_to do |format|
      format.html { redirect_to outages_url, notice: 'Outage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outage
      @outage = Outage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outage_params
      params.require(:outage).permit(:notes)
    end
end
