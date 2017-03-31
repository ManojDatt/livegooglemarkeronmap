class ListasPreciosController < ApplicationController
  before_action :authenticate_admin!
  skip_before_action :verify_authenticity_token
  before_action :set_listas_precio, only: [:show, :edit, :update, :destroy]
  # rescue_from ActionController::InvalidAuthenticityToken do
  #   render :csrf_token_error
  # end
  # GET /listas_precios
  # GET /listas_precios.json
  # def csrf_token_error
  #   redirect_to csrf_token_error_path
  # end
  def index
    @listas_precios = ListasPrecio.all
  end

  # GET /listas_precios/1
  # GET /listas_precios/1.json
  def show
  end

  # GET /listas_precios/new
  def new
    @listas_precio = ListasPrecio.new
  end

  # GET /listas_precios/1/edit
  def edit
  end

  # POST /listas_precios
  # POST /listas_precios.json
  def create
    @listas_precio = ListasPrecio.new(listas_precio_params)

    respond_to do |format|

    # before save check there is no any default price list marked..

     if listas_precio_params[:LIS_DEFAULT_TAR] == "1"

              alreadyMarked = ListasPrecio.where(:LIS_DEFAULT_TAR => 1).count
            if alreadyMarked > 0
                format.html { redirect_to new_listas_precio_path, notice: 'Lista de precios ya marcada como predeterminada en el sistema..' }
                format.json { render :new, status: :errors, location: @listas_precio }
            else
                  if @listas_precio.save
                    format.html { redirect_to listas_precios_url, notice: 'Listas precio Se creó correctamente.' }
                    format.json { render :index, status: :created, location: @listas_precio }
                  else
                    format.html { render :new }
                    format.json { render json: @listas_precio.errors, status: :unprocessable_entity }
                  end
            end
      else
             if @listas_precio.save
              format.html { redirect_to listas_precios_url, notice: 'Listas precio Se creó correctamente.' }
              format.json { render :index, status: :created, location: @listas_precio }
            else
              format.html { render :new }
              format.json { render json: @listas_precio.errors, status: :unprocessable_entity }
            end
      end





    end
  end

  # PATCH/PUT /listas_precios/1
  # PATCH/PUT /listas_precios/1.json
  def update
    respond_to do |format|

 # before update check there is no any default price list marked..
        puts listas_precio_params[:LIS_DEFAULT_TAR]
     if listas_precio_params[:LIS_DEFAULT_TAR] == "1"
            alreadyMarked = ListasPrecio.where(["LIS_DEFAULT_TAR = ? and PKLISTA != ?", 1, params[:id]]).count
          if alreadyMarked > 0
              format.html { redirect_to listas_precios_url, notice: 'Lista de precios ya marcada como predeterminada en el sistema..' }
              format.json { render :new, status: :errors, location: @listas_precio }
          else
              if @listas_precio.update(listas_precio_params)
                format.html { redirect_to listas_precios_url, notice: 'Listas precio Se ha actualizado correctamente.' }
                format.json { render :index, status: :ok, location: @listas_precio }
              else
                format.html { render :edit }
                format.json { render json: @listas_precio.errors, status: :unprocessable_entity }
              end
          end
      else
           if @listas_precio.update(listas_precio_params)
            format.html { redirect_to listas_precios_url, notice: 'Listas precio Se ha actualizado correctamente.' }
            format.json { render :index, status: :ok, location: @listas_precio }
          else
            format.html { render :edit }
            format.json { render json: @listas_precio.errors, status: :unprocessable_entity }
          end
      end


    end
  end

  # DELETE /listas_precios/1
  # DELETE /listas_precios/1.json
  def destroy
    @listas_precio.destroy
    respond_to do |format|
      format.html { redirect_to listas_precios_url, notice: 'Listas precio Fue destruido con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listas_precio
      @listas_precio = ListasPrecio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listas_precio_params
      params.require(:listas_precio).permit(:PKLISTA, :LIS_DEFAULT_TAR, :LIS_DESCRIPCION, :listas_precios_detalles_attributes => [ :id, :ID, :PKLISTA, :PKCATEGORIA, :PKSERVICIO, :LIS_PRECIOD, :_destroy])
    end

       # Never trust parameters from the scary internet, only allow the white list through.

end
