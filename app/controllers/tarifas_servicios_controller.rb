class TarifasServiciosController < ApplicationController
  before_action :set_tarifas_servicio, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user
  skip_before_action :verify_authenticity_token
  # GET /tarifas_servicios
  # GET /tarifas_servicios.json
  def index
    @tarifas_servicios = TarifasServicio.all
  end

  # GET /tarifas_servicios/1
  # GET /tarifas_servicios/1.json
  def show
  end

  # GET /tarifas_servicios/new
  def new
    @tarifas_servicio = TarifasServicio.new
  end

  # GET /tarifas_servicios/1/edit
  def edit
  end

  # POST /tarifas_servicios
  # POST /tarifas_servicios.json
  def create
    @tarifas_servicio = TarifasServicio.new(tarifas_servicio_params)

    respond_to do |format|
      if @tarifas_servicio.save
        format.html { redirect_to tarifas_servicios_url, notice: 'Tarifas servicio Se creó correctamente.' }
        format.json { render :show, status: :created, location: @tarifas_servicio }
      else
        format.html { render :new }
        format.json { render json: @tarifas_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tarifas_servicios/1
  # PATCH/PUT /tarifas_servicios/1.json
  def update
    respond_to do |format|
      if @tarifas_servicio.update(tarifas_servicio_params)
        format.html { redirect_to tarifas_servicios_url, notice: 'Tarifas servicio Se ha actualizado correctamente..' }
        format.json { render :show, status: :ok, location: @tarifas_servicio }
      else
        format.html { render :edit }
        format.json { render json: @tarifas_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tarifas_servicios/1
  # DELETE /tarifas_servicios/1.json
  def destroy
    @tarifas_servicio.destroy
    respond_to do |format|
      format.html { redirect_to tarifas_servicios_url, notice: 'Tarifas servicio Fue destruido con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarifas_servicio
      @tarifas_servicio = TarifasServicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tarifas_servicio_params
      params.require(:tarifas_servicio).permit(:PKSERVICIO, :SER_DESCRIPCION, :SER_NOTAS)
    end
end
