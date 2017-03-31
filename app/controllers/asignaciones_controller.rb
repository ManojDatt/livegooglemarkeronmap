class AsignacionesController < ApplicationController

  # class Asignacione < ::Asignacione
  #   def as_json(options)
  #     super({:only=>[:id,:AS_OBSERVACIONES]}).merge(created_on: created_at.to_date)
  #   end
  # end

  before_action :set_asignacione, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user
  skip_before_action :verify_authenticity_token

  # GET /asignaciones
  # GET /asignaciones.json
  def index
    @asignaciones = Asignacione.all
  end

  # GET /asignaciones/1
  # GET /asignaciones/1.json
  def show
  end

  # GET /asignaciones/new
  def new
    @asignacione = Asignacione.new
  end

  # GET /asignaciones/1/edit
  def edit
  end

  # POST /asignaciones
  # POST /asignaciones.json
  def create
    @asignacione = Asignacione.new(asignacione_params)

    respond_to do |format|
      if @asignacione.save
        format.html { redirect_to asignaciones_url, notice: 'Asignacione Se creó correctamente.' }
        format.json { render :index, status: :created, location: @asignacione }
      else
        format.html { render :new }
        format.json { render json: @asignacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asignaciones/1
  # PATCH/PUT /asignaciones/1.json
  def update
    respond_to do |format|
      if @asignacione.update(asignacione_params)
        format.html { redirect_to asignaciones_url, notice: 'Asignacione Se ha actualizado correctamente.' }
        format.json { render :index, status: :ok, location: @asignacione }
      else
        format.html { render :edit }
        format.json { render json: @asignacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignaciones/1
  # DELETE /asignaciones/1.json
  def destroy
    @asignacione.destroy
    respond_to do |format|
      format.html { redirect_to asignaciones_url, notice: 'Asignacione Fue destruido con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignacione
      @asignacione = Asignacione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asignacione_params
      params.require(:asignacione).permit(:PKASIGNACION, :PKGRUA, :PKOPERADOR, :AS_FECHAINICIO, :AS_FECHAFIN, :AS_OBSERVACIONES)
    end
end
