module OrdenesServiciosHistoricaHelper
  def ordens_count(os_estado)
      OrdenesServicio.where(OS_ESTADO: os_estado).size

  end
  CASE = {
          'CANCELADA'=>'#a9a9a9',
          'CONCLUIDA'=>'#53a834'}
  def ordens_status_color(os_estado)
      CASE[os_estado]
    
  end
end
