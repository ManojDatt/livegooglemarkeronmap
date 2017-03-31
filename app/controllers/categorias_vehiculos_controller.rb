class CategoriasVehiculosController < ApplicationController
  before_action :set_categorias_vehiculo, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user
  skip_before_action :verify_authenticity_token
  # GET /categorias_vehiculos
  # GET /categorias_vehiculos.json
  def index
    @categorias_vehiculos = CategoriasVehiculo.all
  end

  # GET /categorias_vehiculos/1
  # GET /categorias_vehiculos/1.json
  def show
  end

  # GET /categorias_vehiculos/new
  def new
    @categorias_vehiculo = CategoriasVehiculo.new
  end

  # GET /categorias_vehiculos/1/edit
  def edit
  end

  # POST /categorias_vehiculos
  # POST /categorias_vehiculos.json
  def create
    @categorias_vehiculo = CategoriasVehiculo.new(categorias_vehiculo_params)

    respond_to do |format|
      if @categorias_vehiculo.save
        format.html { redirect_to categorias_vehiculos_url, notice: 'Categorias vehiculo Se creó correctamente.' }
        format.json { render :show, status: :created, location: @categorias_vehiculo }
      else
        format.html { render :new }
        format.json { render json: @categorias_vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categorias_vehiculos/1
  # PATCH/PUT /categorias_vehiculos/1.json
  def update
    respond_to do |format|
      if @categorias_vehiculo.update(categorias_vehiculo_params)
        format.html { redirect_to categorias_vehiculos_url, notice: 'Categorias vehiculo Se ha actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @categorias_vehiculo }
      else
        format.html { render :edit }
        format.json { render json: @categorias_vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorias_vehiculos/1
  # DELETE /categorias_vehiculos/1.json
  def destroy
    @categorias_vehiculo.destroy
    respond_to do |format|
      format.html { redirect_to categorias_vehiculos_url, notice: 'Categorias vehiculo Fue destruido con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categorias_vehiculo
      @categorias_vehiculo = CategoriasVehiculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categorias_vehiculo_params
      params.require(:categorias_vehiculo).permit(:PKCATEGORIA, :CAT_DESCRIPCION, :CAT_NOTAS)
    end
end
