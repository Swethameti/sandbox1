class SwethasController < ApplicationController
  before_action :set_swetha, only: [:show, :edit, :update, :destroy]

  # GET /swethas
  # GET /swethas.json
  def index
    @swethas = Swetha.all
  end

  # GET /swethas/1
  # GET /swethas/1.json
  def show
  end

  # GET /swethas/new
  def new
    @swetha = Swetha.new
  end

  # GET /swethas/1/edit
  def edit
  end

  # POST /swethas
  # POST /swethas.json
  def create
    @swetha = Swetha.new(swetha_params)

    respond_to do |format|
      if @swetha.save
        format.html { redirect_to @swetha, notice: 'Swetha was successfully created.' }
        format.json { render :show, status: :created, location: @swetha }
      else
        format.html { render :new }
        format.json { render json: @swetha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /swethas/1
  # PATCH/PUT /swethas/1.json
  def update
    respond_to do |format|
      if @swetha.update(swetha_params)
        format.html { redirect_to @swetha, notice: 'Swetha was successfully updated.' }
        format.json { render :show, status: :ok, location: @swetha }
      else
        format.html { render :edit }
        format.json { render json: @swetha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swethas/1
  # DELETE /swethas/1.json
  def destroy
    @swetha.destroy
    respond_to do |format|
      format.html { redirect_to swethas_url, notice: 'Swetha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swetha
      @swetha = Swetha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def swetha_params
      params.require(:swetha).permit(:name, :description)
    end
end
