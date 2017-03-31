class CiudadesController < ApplicationController
  before_action :set_ciudade, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  before_action :logged_in_user
  # GET /ciudades
  # GET /ciudades.json
  def index
    @ciudades = Ciudade.all
  end

  # GET /ciudades/1
  # GET /ciudades/1.json
  def show
  end

  # GET /ciudades/new
  def new
    @ciudade = Ciudade.new
  end

  # GET /ciudades/1/edit
  def edit
  end

  # POST /ciudades
  # POST /ciudades.json
  def create
    @ciudade = Ciudade.new(ciudade_params)

    respond_to do |format|
      if @ciudade.save
        format.html { redirect_to ciudades_url, notice: 'Ciudad Se creó correctamente.' }
        format.json { render :show, status: :created, location: @ciudade }
      else
        format.html { render :new }
        format.json { render json: @ciudade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ciudades/1
  # PATCH/PUT /ciudades/1.json
  def update
    respond_to do |format|
      if @ciudade.update(ciudade_params)
        format.html { redirect_to ciudades_url, notice: 'Ciudad Se ha actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @ciudade }
      else
        format.html { render :edit }
        format.json { render json: @ciudade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ciudades/1
  # DELETE /ciudades/1.json
  def destroy
    @ciudade.destroy
    respond_to do |format|
      format.html { redirect_to ciudades_url, notice: 'Ciudad Fue destruido con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ciudade
      @ciudade = Ciudade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ciudade_params
      params.require(:ciudade).permit(:PKESTADO, :PKCIUDAD, :CD_NOMBRE, :CD_KM, :VALOR_OMISION)
    end
end
