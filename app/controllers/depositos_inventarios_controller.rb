  class DepositosInventariosController < ApplicationController
  before_action :set_depositos_inventario, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user
  skip_before_action :verify_authenticity_token
  # GET /depositos_inventarios
  # GET /depositos_inventarios.json
  def index
   # debugger
  #  binding.pry
    if !params[:commit].blank?
      @depositos_inventarios = DepositosInventario.all

      if !params[:PKDEPOSITO].blank?
        @depositos_inventarios = @depositos_inventarios.where(:PKDEPOSITO => params[:PKDEPOSITO])
      end


      if !params[:PKINVENTARIO].blank?
        @depositos_inventarios = @depositos_inventarios.where(:PKINVENTARIO => params[:PKINVENTARIO])
      end

      if !params[:INV_PLACAS].blank?
        @depositos_inventarios = @depositos_inventarios.where(:INV_PLACAS => params[:INV_PLACAS])
      end

      if !params[:INV_FINGRESO].blank?
        @depositos_inventarios = @depositos_inventarios.where(:INV_FINGRESO => params[:INV_FINGRESO])
      end

      if !params[:INV_NOMOTOR].blank?
        @depositos_inventarios = @depositos_inventarios.where(:INV_NOMOTOR => params[:INV_NOMOTOR])
      end

      if !params[:INV_NOSERIE].blank?
        @depositos_inventarios = @depositos_inventarios.where(:INV_NOSERIE => params[:INV_NOSERIE])
      end


  end


  end

  # GET /depositos_inventarios/1
  # GET /depositos_inventarios/1.json
  def show
  end
  # GET /depositos_inventarios/new
  def new
  @depositos_inventario = DepositosInventario.new

  end

  # GET /depositos_inventarios/1/edit
  def edit
  end

  # POST /depositos_inventarios
  # POST /depositos_inventarios.json
  def create
  # binding.pry
  @depositos_inventario = DepositosInventario.new(depositos_inventario_params)
  @depositos_inventario.INV_FINGRESO =Time.now
  respond_to do |format|
  if @depositos_inventario.save
  format.html { redirect_to new_depositos_inventario_url, notice: 'Depositos inventario Se creó correctamente.' }
  format.json { render :new, status: :created, location: @depositos_inventario }
  else
  format.html { render :new }
  format.json { render json: @depositos_inventario.errors, status: :unprocessable_entity }
  end
  end
  end

  # PATCH/PUT /depositos_inventarios/1
  # PATCH/PUT /depositos_inventarios/1.json
  def update
  respond_to do |format|
  if @depositos_inventario.update(depositos_inventario_params)
  format.html { redirect_to depositos_inventarios_url, notice: 'Depositos inventario Se ha actualizado correctamente.' }
  format.json { render :index, status: :ok, location: @depositos_inventario }
  else
  format.html { render :edit }
  format.json { render json: @depositos_inventario.errors, status: :unprocessable_entity }
  end
  end
  end

  # DELETE /depositos_inventarios/1
  # DELETE /depositos_inventarios/1.json
  def destroy
  @depositos_inventario.destroy
  respond_to do |format|
  format.html { redirect_to depositos_inventarios_url, notice: 'Depositos inventario was successfully destroyed.' }
  format.json { head :no_content }
  end
  end



  # private
  #   # Use callbacks to share common setup or constraints between actions.
  def set_depositos_inventario
    begin
      @depositos_inventario = DepositosInventario.includes(:depositos_pertenencias).includes(:depositos_imagenes).find(params[:id])
    rescue
      @depositos_inventario = DepositosInventario.new
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def depositos_inventario_params
  params.require(:depositos_inventario).permit(:PKINVENTARIO, :INV_NUMORDEN, :PKTIPO_AUTO, :INV_FDETENCION, :INV_LUGARDETENCION, :INV_FOLIODETENCION, :INV_MOTIVODETENCION, :INV_AUTORIDAD, :PKDEPOSITO, :PKMARCA, :PKSUBMARCA, :PKCOLOR, :INV_MODELO, :INV_NOSERIE, :INV_NOMOTOR, :INV_CONDICION, :INV_FINGRESO, :INV_PLACAS, :depositos_pertenencias_attributes => [ :id, :PKPERTENENCIA, :PKINVENTARIO,:PER_CANTIDAD, :PER_DESCRIPCION, :PER_CONDICION, :_destroy], :depositos_imagenes_attributes => [:id, :PKIMAGEN, :PKINVENTARIO, :IMG_IMAGEN, :_destroy])
  end
  end
