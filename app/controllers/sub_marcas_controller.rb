class SubMarcasController < ApplicationController
  before_action :set_sub_marca, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user
  skip_before_action :verify_authenticity_token
  # GET /sub_marcas
  # GET /sub_marcas.json
  def index
    @sub_marcas = SubMarca.all
  end

  # GET /sub_marcas/1
  # GET /sub_marcas/1.json
  def show
  end

  # GET /sub_marcas/new
  def new
    @sub_marca = SubMarca.new
  end

  # GET /sub_marcas/1/edit
  def edit
  end

  # POST /sub_marcas
  # POST /sub_marcas.json
  def create
    @sub_marca = SubMarca.new(sub_marca_params)

    respond_to do |format|
      if @sub_marca.save
        format.html { redirect_to sub_marcas_url, notice: 'Sub marca Se creó correctamente.' }
        format.json { render :index, status: :created, location: @sub_marca }
      else
        format.html { render :new }
        format.json { render json: @sub_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_marcas/1
  # PATCH/PUT /sub_marcas/1.json
  def update
    respond_to do |format|
      if @sub_marca.update(sub_marca_params)
        format.html { redirect_to sub_marcas_url, notice: 'Sub marca Se ha actualizado correctamente.' }
        format.json { render :index, status: :ok, location: @sub_marca }
      else
        format.html { render :edit }
        format.json { render json: @sub_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_marcas/1
  # DELETE /sub_marcas/1.json
  def destroy
    @sub_marca.destroy
    respond_to do |format|
      format.html { redirect_to sub_marcas_url, notice: 'Sub marca Fue destruido con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_marca
      @sub_marca = SubMarca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_marca_params
      params.require(:sub_marca).permit(:PKMARCA, :PKSUBMARCA, :PKTIPO_AUTO, :SUB_DESCRIPCION)
    end
end
