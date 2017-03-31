class OperadoresController < ApplicationController
  before_action :set_operadore, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user
  skip_before_action :verify_authenticity_token
  # GET /operadores
  # GET /operadores.json
  def index
    @operadores = Operadore.all
  end

  # GET /operadores/1
  # GET /operadores/1.json
  def show
  end

  # GET /operadores/new
  def new
    @operadore = Operadore.new
  end

  # GET /operadores/1/edit
  def edit
  end

  # POST /operadores
  # POST /operadores.json
  def create
    @operadore = Operadore.new(operadore_params)

    respond_to do |format|
      @operadore.OP_FECHAACTIVO=current_admin.last_sign_in_at

      if @operadore.save
        format.html { redirect_to operadores_url, notice: 'Operadore Se creó correctamente.' }
        format.json { render :index, status: :created, location: @operadore }
      else
        format.html { render :new }
        format.json { render json: @operadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operadores/1
  # PATCH/PUT /operadores/1.json
  def update
    respond_to do |format|
        @operadore.OP_FECHAACTIVO=current_admin.last_sign_in_at
      if @operadore.update(operadore_params)
        format.html { redirect_to operadores_url, notice: 'Operadore Se ha actualizado correctamente.' }
        format.json { render :index, status: :ok, location: @operadore }
      else
        format.html { render :edit }
        format.json { render json: @operadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operadores/1
  # DELETE /operadores/1.json
  def destroy
    @operadore.destroy
    respond_to do |format|
      format.html { redirect_to operadores_url, notice: 'Operadore Fue destruido con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operadore
      @operadore = Operadore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operadore_params
      params.require(:operadore).permit(:PKOPERADOR, :OP_NOMBRE, :OP_DOMICILIO, :OP_INGRESO, :OP_LICESTATAL, :OP_TIPOLICESTATAL, :OP_VENC_LICESTATAL, :OP_LICFEDERAL, :OP_TIPOLICFEDERAL, :OP_VEN_LICFEDERAL, :OP_CEL_SERIE, :OP_CEL_NUMERO, :OP_ESTADO, :OP_CLAVE, :OP_FECHAACTIVO, :OP_ACTIVO, :OP_NIP)
    end
end
