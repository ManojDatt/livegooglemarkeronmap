module OrdenesServiciosHelper

  def ordens_count1(os_estado)
    if os_estado.start_with?("ASIGNADA")
      OrdenesServicio.where("OS_ESTADO LIKE ?","ASIGNADA%").size
    else
      OrdenesServicio.where(OS_ESTADO: os_estado).size
    end
  end
  CASE = {'ASIGNACION PENDIENTE'=>'#ff0000',
          'ASIGNADA_SI'=>'#53a834',
          'ASIGNADA_PC'=>'#53a834',
          'ASIGNADA_TT'=>'#53a834',
          'ASIGNADA_TI'=>'#53a834',
          'ASIGNADA_TF'=>'#53a834',
          'ASIGNADA_SF'=>'#53a834',
          'TRASLADO'=>'#81a9fb',
          'CANCELADA'=>'#a9a9a9',
          'PROGRAMADA'=>'#000000'}
  def ordens_status_color1(os_estado)
    if os_estado.start_with?("ASIGNADA")
      return '#53a834'
    else
      CASE[os_estado]
    end
  end
  def order_status
   [['Select Status', nil],
   ['ASIGNACION PENDIENTE','ASIGNACION PENDIENTE'],
   ['ASIGNADA_SI','ASIGNADA_SI'],
   ['ASIGNADA_PC','ASIGNADA_PC'],
   ['ASIGNADA_TI','ASIGNADA_TI'],
   ['ASIGNADA_TT','ASIGNADA_TT'],
   ['ASIGNADA_TF','ASIGNADA_TF'],
   ['ASIGNADA_SF','ASIGNADA_SF'],
   ['TRASLADO','TRASLADO'],
   ['CANCELADA','CANCELADA'],
   ['PROGRAMADA','PROGRAMADA']]
  end

  def assignar_grua
  Grua.joins(:asignaciones).where("GR_ESTADO= ? and ? BETWEEN asignaciones.AS_FECHAINICIO AND  asignaciones.AS_FECHAFIN",'DISPONIBLE', Date.today).uniq.order(:PKGRUA).map{|e| ["#{e.GR_CLAVE}", e.PKGRUA]}
  end
end
