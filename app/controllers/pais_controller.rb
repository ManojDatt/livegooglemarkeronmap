class PaisController < ApplicationController
 before_action :logged_in_user
  before_action :set_pai, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /pais
  # GET /pais.json
  def index
    @pais = Pai.all
  end

  # GET /pais/1
  # GET /pais/1.json
  def show
  end

  # GET /pais/new
  def new
    @pai = Pai.new
  end

  # GET /pais/1/edit
  def edit
  end

  # POST /pais
  # POST /pais.json
  def create
    @pai = Pai.new(pai_params)

    respond_to do |format|
      if @pai.save
        format.html { redirect_to pais_url, notice: 'Pai Se creó correctamente.' }
        format.json { render :index, status: :created, location: @pai }
      else
        format.html { render :new }
        format.json { render json: @pai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pais/1
  # PATCH/PUT /pais/1.json
  def update
    respond_to do |format|
      if @pai.update(pai_params)
        format.html { redirect_to pais_url, notice: 'Pai Se ha actualizado correctamente.' }
        format.json { render :index, status: :ok, location: @pai }
      else
        format.html { render :edit }
        format.json { render json: @pai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pais/1
  # DELETE /pais/1.json
  def destroy
     @pai.destroy
     respond_to do |format|
       format.html { redirect_to pais_url, notice: 'Pai Fue destruido con éxito.' }
       format.json { head :no_content }
     end

  end

  def del
    Pais.find_by(id: params[:id], sender_Id: 1).destroy
    redirect_to :index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pai
      @pai = Pai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pai_params
      params.require(:pai).permit(:PKPAIS, :PA_DESCRIPCION, :CODIGOINT)
    end
end
