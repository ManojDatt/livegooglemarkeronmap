class ConfiguracionesController < ApplicationController
  before_action :set_configuracione, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user
  skip_before_action :verify_authenticity_token
  # GET /configuraciones
  # GET /configuraciones.json
  def index
    @configuraciones = Configuracione.all
  end

  # GET /configuraciones/1
  # GET /configuraciones/1.json
  def show
  end

  # GET /configuraciones/new
  def new
    @configuracione = Configuracione.new
  end

  # GET /configuraciones/1/edit
  def edit
  end

  # POST /configuraciones
  # POST /configuraciones.json
  def create
    @configuracione = Configuracione.new(configuracione_params)

    respond_to do |format|
      if @configuracione.save
        format.html { redirect_to configuraciones_url, notice: 'Configuracion Se creó correctamente.' }
        format.json { render :index, status: :created, location: @configuracione }
      else
        format.html { render :new }
        format.json { render json: @configuracione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /configuraciones/1
  # PATCH/PUT /configuraciones/1.json
  def update
    respond_to do |format|
      if @configuracione.update(configuracione_params)
        format.html { redirect_to configuraciones_url, notice: 'Configuracion Se ha actualizado correctamente.' }
        format.json { render :index, status: :ok, location: @configuracione }
      else
        format.html { render :edit }
        format.json { render json: @configuracione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /configuraciones/1
  # DELETE /configuraciones/1.json
  def destroy
    @configuracione.destroy
    respond_to do |format|
      format.html { redirect_to configuraciones_url, notice: 'Configuracione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_configuracione
      @configuracione = Configuracione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def configuracione_params
      params.require(:configuracione).permit(:Llave, :Valor, :Descripcion)
    end
end
