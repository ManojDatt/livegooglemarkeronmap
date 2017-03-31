class ColoresController < ApplicationController
  before_action :set_colore, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user
  skip_before_action :verify_authenticity_token
  # GET /colores
  # GET /colores.json
  def index
    @colores = Colore.all
  end

  # GET /colores/1
  # GET /colores/1.json
  def show
  end

  # GET /colores/new
  def new
    @colore = Colore.new
  end

  # GET /colores/1/edit
  def edit
  end

  # POST /colores
  # POST /colores.json
  def create
    @colore = Colore.new(colore_params)

    respond_to do |format|
      if @colore.save
        format.html { redirect_to colores_url, notice: 'Colore Se creó correctamente.' }
        format.json { render :index, status: :created, location: @colore }
      else
        format.html { render :new }
        format.json { render json: @colore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colores/1
  # PATCH/PUT /colores/1.json
  def update
    respond_to do |format|
      if @colore.update(colore_params)
        format.html { redirect_to colores_url, notice: 'Colore Se ha actualizado correctamente.' }
        format.json { render :index, status: :ok, location: @colore }
      else
        format.html { render :edit }
        format.json { render json: @colore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colores/1
  # DELETE /colores/1.json
  def destroy
    @colore.destroy
    respond_to do |format|
      format.html { redirect_to colores_url, notice: 'Colore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colore
      @colore = Colore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def colore_params
      params.require(:colore).permit(:PKCOLOR, :COL_DESCRIPCION)
    end
end
