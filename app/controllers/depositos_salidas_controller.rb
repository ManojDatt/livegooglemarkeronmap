  class DepositosSalidasController < ApplicationController
  before_action :set_depositos_salida, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user
  skip_before_action :verify_authenticity_token
  # GET /depositos_salidas
  # GET /depositos_salidas.json
  def index
    @depositos_salidas = DepositosSalida.all
  end

  def show
  end

  def new
    @depositos_salida = DepositosSalida.new
    @depositos_inventario = DepositosInventario.new
    if !params[:commit].blank?
      if !params[:PKINVENTARIO].blank?
        count= DepositosSalida.where(:PKINVENTARIO => params[:PKINVENTARIO] ).count
        if count > 0
          redirect_to new_depositos_salida_path, notice: 'Depositos salida Ya creado en el sistema .'
        else
          @depositos_inventario =DepositosInventario.find_by(PKINVENTARIO:params[:PKINVENTARIO])
          if @depositos_inventario.nil?
            @depositos_inventario=DepositosInventario.new
            redirect_to new_depositos_salida_path, notice: 'Depositos NO. de inventario no encontrado en el sistema.'
          else
            invoiceDate= @depositos_inventario.INV_FINGRESO.nil? ? Time.now.to_date : @depositos_inventario.INV_FINGRESO.to_date
            days=(Time.now.to_date - invoiceDate ).to_i
            configuration_ImporteDiario = Configuracione.where(:Llave => "ImporteDiario")
            configuration_IVA = Configuracione.where(:Llave =>"IVA")
            if configuration_ImporteDiario.exists? and configuration_IVA.exists?
              dailyAmount= (Configuracione.where(:Llave => "ImporteDiario").first.Valor).to_s.to_f
              taxPercent= (Configuracione.where(:Llave =>"IVA").first.Valor).to_s.to_f
              subTotal= days * dailyAmount
              tax = subTotal * taxPercent
              total = subTotal + tax
              @depositos_inventario.INV_FINGRESO=invoiceDate
              @depositos_salida.S_NumDias = days
              @depositos_salida.S_ImporteDiario = dailyAmount

              @depositos_salida.S_SubTotal = subTotal
              @depositos_salida.S_IVA = tax
              @depositos_salida.S_Total = total
              @depositos_salida.PKINVENTARIO=@depositos_inventario.PKINVENTARIO
            else
              @depositos_inventario=DepositosInventario.new
              redirect_to new_depositos_salida_path, notice: 'Importe diario y IVA modificado en la configuración.'
            end
          end

        end
      end
    end

  end

  def edit
  end

  # POST /depositos_salidas
  # POST /depositos_salidas.json
  def create
    @depositos_salida = DepositosSalida.new(depositos_salida_params)
    respond_to do |format|
        if @depositos_salida.save
            @depositos_inventario =DepositosInventario.find_by(PKINVENTARIO: params[:depositos_salida][:PKINVENTARIO])
            @depositos_inventario.update_attribute(:INV_FSALIDA , Time.now)
            format.html { redirect_to new_depositos_salida_path, notice: 'Depositos salida Se creó correctamente.'  }
            format.json { render :index, status: :created, location: @depositos_salida }
        else
            format.html { render :new }
            format.json { render json: @depositos_salida.errors, status: :unprocessable_entity }
        end
    end
  end

  # PATCH/PUT /depositos_salidas/1
  # PATCH/PUT /depositos_salidas/1.json
  def update
  respond_to do |format|
  if @depositos_salida.update(depositos_salida_params)
  format.html { redirect_to new_depositos_salida_path, notice: 'Depositos salida Se ha actualizado correctamente.' }
  format.json { render :index, status: :ok, location: @depositos_salida }
  else
  format.html { render :edit }
  format.json { render json: @depositos_salida.errors, status: :unprocessable_entity }
  end
  end
  end

  # DELETE /depositos_salidas/1
  # DELETE /depositos_salidas/1.json
  def destroy
  @depositos_salida.destroy
  respond_to do |format|
  format.html { redirect_to depositos_salidas_url, notice: 'Depositos salida was successfully destroyed.' }
  format.json { head :no_content }
  end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_depositos_salida
  @depositos_salida = DepositosSalida.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def depositos_salida_params
  params.require(:depositos_salida).permit(:PKINVENTARIO, :S_CLIENTE, :S_RFC, :S_FECHAPAGO, :S_METODOPAGO, :S_FORMA_DE_PAGO, :S_NUMCTA, :S_DOMICILIO, :S_NoExterior ,:S_REFERENCIA, :S_NoInterior, :S_Colonia, :S_Localidad, :S_Municipio, :S_Estado, :S_Pais, :S_CodigoPostal, :S_NumDias, :S_ImporteDiario, :S_SubTotal, :S_IVA, :S_Total)
  end
  end
