class CoupomsController < ApplicationController
  before_action :set_coupom, only: [:show, :edit, :update, :destroy]

  # GET /coupoms
  # GET /coupoms.json
  def index
    @coupoms = Coupom.all
  end

  # GET /coupoms/1
  # GET /coupoms/1.json
  def show
  end

  # GET /coupoms/new
  def new
    @coupom = Coupom.new
  end

  # GET /coupoms/1/edit
  def edit
  end

  # POST /coupoms
  # POST /coupoms.json
  def create
    @coupom = Coupom.new(coupom_params)

    respond_to do |format|
      if @coupom.save
        format.html { redirect_to @coupom, notice: 'Coupom was successfully created.' }
        format.json { render :show, status: :created, location: @coupom }
      else
        format.html { render :new }
        format.json { render json: @coupom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coupoms/1
  # PATCH/PUT /coupoms/1.json
  def update
    respond_to do |format|
      if @coupom.update(coupom_params)
        format.html { redirect_to @coupom, notice: 'Coupom was successfully updated.' }
        format.json { render :show, status: :ok, location: @coupom }
      else
        format.html { render :edit }
        format.json { render json: @coupom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coupoms/1
  # DELETE /coupoms/1.json
  def destroy
    @coupom.destroy
    respond_to do |format|
      format.html { redirect_to coupoms_url, notice: 'Coupom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coupom
      @coupom = Coupom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coupom_params
      params.require(:coupom).permit(:value, :key, :expiration)
    end
end
