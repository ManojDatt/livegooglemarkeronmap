module DepositosInventariosHelper
  def depositos_collection
    Deposito.order(:DEP_NOMBRE)
  end
end
