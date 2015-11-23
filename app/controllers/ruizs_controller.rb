class RuizsController < ApplicationController
  before_action :set_ruiz, only: [:show, :edit, :update, :destroy]

  # GET /ruizs
  # GET /ruizs.json
  def index
    @ruizs = Ruiz.all
  end

  # GET /ruizs/1
  # GET /ruizs/1.json
  def show
  end

  # GET /ruizs/new
  def new
    @ruiz = Ruiz.new
  end

  # GET /ruizs/1/edit
  def edit
  end

  # POST /ruizs
  # POST /ruizs.json
  def create
    @ruiz = Ruiz.new(ruiz_params)

    respond_to do |format|
      if @ruiz.save
        format.html { redirect_to @ruiz, notice: 'Ruiz was successfully created.' }
        format.json { render :show, status: :created, location: @ruiz }
      else
        format.html { render :new }
        format.json { render json: @ruiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruizs/1
  # PATCH/PUT /ruizs/1.json
  def update
    respond_to do |format|
      if @ruiz.update(ruiz_params)
        format.html { redirect_to @ruiz, notice: 'Ruiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @ruiz }
      else
        format.html { render :edit }
        format.json { render json: @ruiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruizs/1
  # DELETE /ruizs/1.json
  def destroy
    @ruiz.destroy
    respond_to do |format|
      format.html { redirect_to ruizs_url, notice: 'Ruiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruiz
      @ruiz = Ruiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ruiz_params
      params.require(:ruiz).permit(:Cliente, :Direccion, :TotalFactura, :Fecha)
    end
end
