class OrdenesServiciosController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_ordenes_servicio, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user
  skip_before_action :verify_authenticity_token
  # GET /ordenes_servicios
  # GET /ordenes_servicios.json
  def index
    if params['query'].present?
      if params['query'].start_with?('ASIGNADA')
        @ordenes_servicios = OrdenesServicio.where("OS_ESTADO LIKE ?","ASIGNADA%")
      else
          @ordenes_servicios = OrdenesServicio.where(OS_ESTADO:params['query'])
      end
    else
      p"else---"
      @ordenes_servicios = OrdenesServicio.all
    end
    @ordenes_servicios
    # binding.pry
  end

  def GetOperadores

     @Asignacione = Asignacione.where(" PKGRUA = ? AND AS_FECHAINICIO <= ? AND AS_FECHAFIN >= ?",params[:PKGURA],Date.today, Date.today).first


      if !@Asignacione.nil?
           @operadoes= Operadore.where("PKOPERADOR = ?", @Asignacione.PKOPERADOR).first
      end


       respond_to do |format|
        format.html
      format.json {render json: @operadoes}
     end
  end

def GetAllMarcas

     @Marcas = Marca.where(" PKMARCA = ?",params[:PKMARCA]).all

     respond_to do |format|
      format.html
    format.json {render json: @Marcas}
   end
  end


def GetAllTipoVehiculos

     @tipo = TipoVehiculo.where(" PKTIPO_AUTO = ?",params[:PKTIPO_AUTO]).all
     respond_to do |format|
      format.html
    format.json {render json: @tipo}
   end
  end



  # GET /ordenes_servicios/1
  # GET /ordenes_servicios/1.json
  def show
  end

  # GET /ordenes_servicios/new
  def new
    @ordenes_servicio = OrdenesServicio.new
  end

  # GET /ordenes_servicios/1/edit
  def edit
  end

  # POST /ordenes_servicios
  # POST /ordenes_servicios.json
  def create
    @ordenes_servicio = OrdenesServicio.new(ordenes_servicio_params)

    respond_to do |format|
      if @ordenes_servicio.save
        format.html { redirect_to ordenes_servicios_url, notice: 'Ordenes servicio wSe creó correctamente.' }
        format.json { render :index, status: :created, location: @ordenes_servicio }
      else
        format.html { render :new }
        format.json { render json: @ordenes_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordenes_servicios/1
  # PATCH/PUT /ordenes_servicios/1.json
  def update
    respond_to do |format|
      if @ordenes_servicio.update(ordenes_servicio_params)
        format.html { redirect_to ordenes_servicios_url, notice: 'Ordenes servicio Se ha actualizado correctamente.' }
        format.json { render :index, status: :ok, location: @ordenes_servicio }
      else
        format.html { render :edit }
        format.json { render json: @ordenes_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordenes_servicios/1
  # DELETE /ordenes_servicios/1.json
  def destroy
    @ordenes_servicio.destroy
    respond_to do |format|
      format.html { redirect_to ordenes_servicios_url, notice: 'Ordenes servicio Fue destruido con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordenes_servicio
      @ordenes_servicio = OrdenesServicio.includes(:ordenes_servicio_precios).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordenes_servicio_params
      params.require(:ordenes_servicio).permit(:ID, :OS_FECHAALTA, :PKCLIENTE, :PKCOLOR, :PKSUBMARCA, :PKGRUA, :PKOPERADOR, :OS_TCOMPROMISO, :OS_NOMBRE, :OS_TELEFONO, :OS_PLACAS, :OS_MODELO, :OS_POLIZA, :OS_SINIESTRO, :OS_AUTORIZACION, :OS_AJUSTADOR, :OS_ASEGURADO, :OS_PROGRAMADA, :OS_FECHAPROGRAMADA, :OS_ORIGEN, :OS_ORIGEN_LAT, :OS_ORIGEN_LONG, :OS_ORIGEN_NOTAS, :OS_DESTINO, :OS_DESTINO_LAT, :OS_DESTINO_LONG, :OS_DESTINO_NOTAS, :OS_FECHAASIGNACION, :OS_ESTADO, :OS_FECHALLEGADA, :OS_FECHAINCIO, :OS_FECHAFIN, :OS_FECHATERMINO, :OS_ODOMETROFINAL, :OS_ODOMETROINICIAL, :OS_HOROMETROINICIAL, :OS_HOROMETROFINAL, :OS_HRINTER, :OS_KMINTER, :OS_TIPO_SERVICIO, :PKTIPO_AUTO, :PKMARCA, :ordenes_servicio_precios_attributes => [[ :id, :ID, :OS_ID, :PKSERVICIO, :OSP_PRECIO, :OSP_CANTIDAD, :OSP_SUBTOTAL, :OSP_TAX, :OSP_TOTAL, :_destroy]])
    end
end
