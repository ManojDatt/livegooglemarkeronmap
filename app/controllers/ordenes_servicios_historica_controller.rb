class OrdenesServiciosHistoricaController < ApplicationController
  before_action :authenticate_admin!
  before_action :logged_in_user
  skip_before_action :verify_authenticity_token
  def index
    if params['query'].present?
          @ordenes_servicios = OrdenesServicio.where(OS_ESTADO:params['query'])
    else
      @ordenes_servicios = OrdenesServicio.where("OS_ESTADO = ? OR OS_ESTADO = ?","CANCELADA","CONCLUIDO")
    end
  end

end
