class GruasController < ApplicationController
  before_action :set_grua, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user
  skip_before_action :verify_authenticity_token
  # GET /gruas
  # GET /gruas.json
  def index
    @gruas = Grua.all
  end

  # GET /gruas/1
  # GET /gruas/1.json
  def show
  end

  # GET /gruas/new
  def new
    @grua = Grua.new
  end

  # GET /gruas/1/edit
  def edit
  end

  # POST /gruas
  # POST /gruas.json
  def create
    @grua = Grua.new(grua_params)

    respond_to do |format|
      if @grua.save
        format.html { redirect_to gruas_url, notice: 'Grua Se creó correctamente.' }
        format.json { render :index, status: :created, location: @grua }
      else
        format.html { render :new }
        format.json { render json: @grua.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gruas/1
  # PATCH/PUT /gruas/1.json
  def update
    respond_to do |format|
      if @grua.update(grua_params)
        format.html { redirect_to gruas_url, notice: 'Grua Se ha actualizado correctamente.' }
        format.json { render :index, status: :ok, location: @grua }
      else
        format.html { render :edit }
        format.json { render json: @grua.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gruas/1
  # DELETE /gruas/1.json
  def destroy
     respond_to do |format|
       if @grua.update_attribute(:GR_ESTADO,"BAJA")
          format.html { redirect_to gruas_url, notice: 'Grua Fue destruido con éxito.' }
          format.json { head :no_content }
      else
        format.html { render :edit }
        format.json { render json: @grua.errors, status: :unprocessable_entity }
      end
    end
 end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grua
      @grua = Grua.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grua_params
      params.require(:grua).permit(:PKGRUA, :PKEMPRESA, :GR_CLAVE, :PKCOMBUSTIBLE, :PKMARCA, :GR_DESCRIPCION, :GR_CAPACIDAD, :GR_MODELO, :GR_MOTOR, :GR_PLACAESTATAL, :GR_PLACAFEDERAL, :GR_PERMISOESTATA, :GR_PERMISOFEDERAL, :GR_TIPO, :GR_ODOMETRO, :GR_HOROMETRO, :GR_UBICACION_LATITUD, :GR_UBICACION_LONGITUD, :GR_ULTIMO_REPORTE, :GR_BASE, :GR_ESTADO, :GR_NO_SERIE_RADIO)
    end
end
