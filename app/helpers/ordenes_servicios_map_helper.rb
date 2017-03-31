module OrdenesServiciosMapHelper
  def ordens_count(os_estado)
    if os_estado.start_with?("ASIGNADA")
      OrdenesServicio.where("OS_ESTADO LIKE ?","ASIGNADA%").size
    else
      OrdenesServicio.where(OS_ESTADO: os_estado).size
    end
  end

#   def map_data_for_order ordenes_servicios
#     map_data_for_order_origin(ordenes_servicios) + map_data_for_order_destination(ordenes_servicios) + order_truck_location(ordenes_servicios)
#   end
#
# ###===========  Origin Position On Map
#   def map_data_for_order_origin ordenes_servicios
#     map_marker_data = []
#     ordenes_servicios.each_with_index do |marker, index|
#
#       info_window_content = "<div> <h4><b>#{marker.OS_ORIGEN} </b>#origen</h4>
#
#       <table>
#       <tr><td>Order # #{marker.ID}</td>
#       <td>,Order Start Date # #{marker.OS_FECHAINCIO}</td></tr>
#       <tr><td>Order Status # #{marker.OS_ESTADO}</td><td></td></tr>
#       <tr>
#       <th>Vehicle Identification:</th></tr>
#       <tr>
#       <td>Modelo: #{marker.gruas.present? ? marker.gruas.GR_MODELO : 'N/A'}</td>
#       <td>, Placas: #{marker.OS_PLACAS}</td>
#       </tr>
#     "
#       client = marker.clientes
#       color = marker.colores
#       if color.present?
#         colors = "<tr><td>Color: #{color.COL_DESCRIPCION}</td><td>Tipo : #{marker.gruas.present? ? marker.gruas.GR_TIPO : 'N/A'}</td></tr>"
#         info_window_content = info_window_content+colors
#       end
#       if client.present?
#         customer = "<tr><td>Cliente: #{client.NOMBRE}</td><td>Domicilio : #{client.DOMICILIO}</td></tr>"
#         info_window_content = info_window_content+customer
#       end
#       if marker.OS_ESTADO =="ASIGNACION PENDIENTE"
#         info_window_content = info_window_content+"  </table></div>
#         <table><tr>
#         <td>#{ActionController::Base.helpers.link_to('ASGINAR GRUA', edit_ordenes_servicio_path(marker), class:'map_link')}</td>
#         <td style='float:right;'>#{ActionController::Base.helpers.link_to('EDITAR ORDEN', edit_ordenes_servicio_path(marker), class:'map_link')}</td>
#         </tr></table>
#         "
#       else
#         info_window_content = info_window_content+"  </table></div>
#         <table><tr>
#         <td style='float:right;'>#{ActionController::Base.helpers.link_to('EDITAR ORDEN', edit_ordenes_servicio_path(marker), class:'map_link')}</td>
#         </tr></table>
#         "
#       end
#
#       map_marker_data.append([info_window_content, marker.OS_ORIGEN_LAT.to_f, marker.OS_ORIGEN_LONG.to_f, index+1, "/assets/source1.png"])
#
#     end
#     map_marker_data
#   end
#
#   ###===   Destination location on Map
#
#   def map_data_for_order_destination ordenes_servicios
#     map_marker_data = []
#     ordenes_servicios.each_with_index do |marker, index|
#
#       info_window_content = "<div> <h4><b>#{marker.OS_ORIGEN}</b>#destino</h4>
#
#       <table>
#       <tr><td>Order # #{marker.ID}</td>
#       <td>,Order Start Date # #{marker.OS_FECHAINCIO}</td></tr>
#       <tr><td>Order Status # #{marker.OS_ESTADO}</td><td></td></tr>
#       <tr>
#       <th>Vehicle Identification:</th></tr>
#       <tr>
#       <td>Modelo: #{marker.gruas.present? ? marker.gruas.GR_MODELO : 'N/A'}</td>
#       <td>, Placas: #{marker.OS_PLACAS}</td>
#       </tr>
#     "
#       client = marker.clientes
#       color = marker.colores
#       if color.present?
#         colors = "<tr><td>Color: #{color.COL_DESCRIPCION}</td><td>Tipo : #{marker.gruas.present? ? marker.gruas.GR_TIPO : 'N/A'}</td></tr>"
#         info_window_content = info_window_content+colors
#       end
#       if client.present?
#         customer = "<tr><td>Cliente: #{client.NOMBRE}</td><td>Domicilio : #{client.DOMICILIO}</td></tr>"
#         info_window_content = info_window_content+customer
#       end
#       if marker.OS_ESTADO =="ASIGNACION PENDIENTE"
#         info_window_content = info_window_content+"  </table></div>
#         <table><tr>
#         <td>#{ActionController::Base.helpers.link_to('ASGINAR GRUA', edit_ordenes_servicio_path(marker), class:'map_link')}</td>
#         <td style='float:right;'>#{ActionController::Base.helpers.link_to('EDITAR ORDEN', edit_ordenes_servicio_path(marker), class:'map_link')}</td>
#         </tr></table>
#         "
#       else
#         info_window_content = info_window_content+"  </table></div>
#         <table><tr>
#         <td style='float:right;'>#{ActionController::Base.helpers.link_to('EDITAR ORDEN', edit_ordenes_servicio_path(marker), class:'map_link')}</td>
#         </tr></table>
#         "
#       end
#
#       map_marker_data.append([info_window_content, marker.OS_DESTINO_LAT.to_f, marker.OS_DESTINO_LONG.to_f, index+1,"/assets/destination1.png"])
#
#
#     end
#     map_marker_data
#   end
#
# ####===================   Order Truck Position On Map
# VEHICAL_TYPE_ICON={"AUTOMOVIL"=>"/assets/car.png","GRUA"=>"/assets/grua.png"}
# def order_truck_location ordenes_servicios
#   map_marker_data = []
#   ordenes_servicios.each_with_index do |marker, index|
#     if marker.gruas.present?
#       info_window_content = "<div> <h4><b>Ubicación de Grua#</b></h4>
#       <table>
#       <tr><td><b>Order # #{marker.ID}</b></td><td></td><td></td></tr>
#       <tr>
#       <td><b>Truck Id: #{marker.gruas.present? ? marker.gruas.PKGRUA : 'N/A'}</b></td>
#       <td>,Modelo: #{marker.gruas.present? ? marker.gruas.GR_MODELO : 'N/A'}</td>
#       <td> , Typo: #{marker.gruas.present? ? marker.gruas.GR_TIPO : "N/A"}</td>
#       </tr>
#       </table>
#       "
#       key = marker.tipo_vehiculos.present? ? marker.tipo_vehiculos.TAUT_DESCRIPCION : ""
#       if VEHICAL_TYPE_ICON.key?(key)
#         icon =  VEHICAL_TYPE_ICON[key]
#       else
#         icon = "/assets/truck.png"
#       end
#       map_marker_data.append([info_window_content, marker.gruas.GR_UBICACION_LATITUD.to_f, marker.gruas.GR_UBICACION_LONGITUD.to_f, index+1,icon])
#     end
#   end
#   map_marker_data
# end
#

end
