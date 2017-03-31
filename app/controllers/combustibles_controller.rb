class CombustiblesController < ApplicationController
  before_action :set_combustible, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user
  skip_before_action :verify_authenticity_token
  # GET /combustibles
  # GET /combustibles.json
  def index
    @combustibles = Combustible.all
  end

  # GET /combustibles/1
  # GET /combustibles/1.json
  def show
  end

  # GET /combustibles/new
  def new
    @combustible = Combustible.new
  end

  # GET /combustibles/1/edit
  def edit
  end

  # POST /combustibles
  # POST /combustibles.json
  def create
    @combustible = Combustible.new(combustible_params)

    respond_to do |format|
      if @combustible.save
        format.html { redirect_to combustibles_url, notice: 'Combustible Se creó correctamente.' }
        format.json { render :index, status: :created, location: @combustible }
      else
        format.html { render :new }
        format.json { render json: @combustible.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /combustibles/1
  # PATCH/PUT /combustibles/1.json
  def update
    respond_to do |format|
      if @combustible.update(combustible_params)
        format.html { redirect_to combustibles_url, notice: 'Combustible Se ha actualizado correctamente.' }
        format.json { render :index, status: :ok, location: @combustible }
      else
        format.html { render :edit }
        format.json { render json: @combustible.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combustibles/1
  # DELETE /combustibles/1.json
  def destroy
    @combustible.destroy
    respond_to do |format|
      format.html { redirect_to combustibles_url, notice: 'Combustible was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combustible
      @combustible = Combustible.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def combustible_params
      params.require(:combustible).permit(:PKCOMBUSTIBLE, :COM_FINICIO, :COM_FFIN, :COM_DESCRIPCION, :COM_PRECIO)
    end
end
