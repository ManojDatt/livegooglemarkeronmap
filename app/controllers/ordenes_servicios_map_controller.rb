class OrdenesServiciosMapController < ApplicationController
  before_action :authenticate_admin!
  before_action :logged_in_user
  skip_before_action :verify_authenticity_token
  # GET /ordenes_servicios
  # GET /ordenes_servicios.json
  def index
    if params['query'].present?
      if params['query'].start_with?('ASIGNADA')
        @ordenes_servicios = OrdenesServicio.where("OS_ESTADO LIKE ?","ASIGNADA%")
      else
          @ordenes_servicios = OrdenesServicio.where(OS_ESTADO:params['query'])
      end
    else
      @ordenes_servicios = OrdenesServicio.where("OS_ESTADO = ? OR OS_ESTADO = ? OR OS_ESTADO LIKE ?","ASIGNACION PENDIENTE","TRASLADO","ASIGNADA%")
    end
    # Grua.find(ordenes_servicio.PKGRUA) rescue nil).nil?
    @list_hash = []
    if @ordenes_servicios.present?
      @ordenes_servicios.select(:PKGRUA,:OS_ESTADO).distinct.each do |ordenes_servicio|
        if ordenes_servicio.OS_ESTADO != "CANCELADA" and ordenes_servicio.OS_ESTADO != "PROGRAMADA"
            @data_hash = {}
            @data_hash['grua'] = ordenes_servicio.PKGRUA
            @data_hash['status'] = ordenes_servicio.OS_ESTADO
            count = @ordenes_servicios.where(OS_ESTADO:ordenes_servicio.OS_ESTADO,PKGRUA:ordenes_servicio.PKGRUA).count
            if count==0
              @data_hash['orden'] = 'N/A'
            else
              @data_hash['orden'] = count
            end
            @list_hash.append(@data_hash)
        end
      end

    end
    @ordenes_servicios1 = (map_data_for_order_origin(@ordenes_servicios).merge(map_data_for_order_destination(@ordenes_servicios)).merge(order_truck_location(@ordenes_servicios))).to_json

  end
  # ####=================   Test Live Map Marker move ApplicationController
  def remove_marker(marker)
    updated = Time.now-10.seconds
    marker.updated_at >= updated ? true : false
  end
  def service_order_map_data
    if params['query'].present?
      if params['query'].start_with?('ASIGNADA')
        @ordenes_servicios = OrdenesServicio.where("OS_ESTADO LIKE ?","ASIGNADA%")
      else
          @ordenes_servicios = OrdenesServicio.where(OS_ESTADO:params['query'])
      end
    else
      @ordenes_servicios = OrdenesServicio.where("OS_ESTADO = ? OR OS_ESTADO = ? OR OS_ESTADO LIKE ?","ASIGNACION PENDIENTE","TRASLADO","ASIGNADA%")
    end
    # @ordenes_servicios = OrdenesServicio.where("OS_ESTADO = ? OR OS_ESTADO = ? OR OS_ESTADO LIKE ?","ASIGNACION PENDIENTE","TRASLADO","ASIGNADA%")

    render json: (map_data_for_order_origin(@ordenes_servicios).merge(map_data_for_order_destination(@ordenes_servicios)).merge(order_truck_location(@ordenes_servicios))).to_json
  end
  def map_data_for_order_origin ordenes_servicios
    map_marker_data = {}
    ordenes_servicios.each_with_index do |marker, index|

      info_window_content = "<div> <h4><b>#{marker.OS_ORIGEN} </b>#origen</h4>

      <table>
      <tr><td>Order # #{marker.ID}</td>
      <td>,Order Start Date # #{marker.OS_FECHAINCIO}</td></tr>
      <tr><td>Order Status # #{marker.OS_ESTADO}</td><td></td></tr>
      <tr>
      <th>Vehicle Identification:</th></tr>
      <tr>
      <td>Modelo: #{marker.gruas.present? ? marker.gruas.GR_MODELO : 'N/A'}</td>
      <td>, Placas: #{marker.OS_PLACAS}</td>
      </tr>
    "
      client = marker.clientes
      color = marker.colores
      if color.present?
        colors = "<tr><td>Color: #{color.COL_DESCRIPCION}</td><td>Tipo : #{marker.gruas.present? ? marker.gruas.GR_TIPO : 'N/A'}</td></tr>"
        info_window_content = info_window_content+colors
      end
      if client.present?
        customer = "<tr><td>Cliente: #{client.NOMBRE}</td><td>Domicilio : #{client.DOMICILIO}</td></tr>"
        info_window_content = info_window_content+customer
      end
      if marker.OS_ESTADO =="ASIGNACION PENDIENTE"
        info_window_content = info_window_content+"  </table></div>
        <table><tr>
        <td>#{ActionController::Base.helpers.link_to('ASGINAR GRUA', edit_ordenes_servicio_path(marker), class:'map_link')}</td>
        <td style='float:right;'>#{ActionController::Base.helpers.link_to('EDITAR ORDEN', edit_ordenes_servicio_path(marker), class:'map_link')}</td>
        </tr></table>
        "
      else
        info_window_content = info_window_content+"  </table></div>
        <table><tr>
        <td style='float:right;'>#{ActionController::Base.helpers.link_to('EDITAR ORDEN', edit_ordenes_servicio_path(marker), class:'map_link')}</td>
        </tr></table>
        "
      end

      map_marker_data["o"+(index+1).to_s] = {info: info_window_content, lat: marker.OS_ORIGEN_LAT.to_f, lng: marker.OS_ORIGEN_LONG.to_f,icon: "/assets/source1.png", remove: remove_marker(marker)}

    end
    map_marker_data
  end

  ###===   Destination location on Map

  def map_data_for_order_destination ordenes_servicios
    map_marker_data = {}
    ordenes_servicios.each_with_index do |marker, index|

      info_window_content = "<div> <h4><b>#{marker.OS_ORIGEN}</b>#destino</h4>

      <table>
      <tr><td>Order # #{marker.ID}</td>
      <td>,Order Start Date # #{marker.OS_FECHAINCIO}</td></tr>
      <tr><td>Order Status # #{marker.OS_ESTADO}</td><td></td></tr>
      <tr>
      <th>Vehicle Identification:</th></tr>
      <tr>
      <td>Modelo: #{marker.gruas.present? ? marker.gruas.GR_MODELO : 'N/A'}</td>
      <td>, Placas: #{marker.OS_PLACAS}</td>
      </tr>
    "
      client = marker.clientes
      color = marker.colores
      if color.present?
        colors = "<tr><td>Color: #{color.COL_DESCRIPCION}</td><td>Tipo : #{marker.gruas.present? ? marker.gruas.GR_TIPO : 'N/A'}</td></tr>"
        info_window_content = info_window_content+colors
      end
      if client.present?
        customer = "<tr><td>Cliente: #{client.NOMBRE}</td><td>Domicilio : #{client.DOMICILIO}</td></tr>"
        info_window_content = info_window_content+customer
      end
      if marker.OS_ESTADO =="ASIGNACION PENDIENTE"
        info_window_content = info_window_content+"  </table></div>
        <table><tr>
        <td>#{ActionController::Base.helpers.link_to('ASGINAR GRUA', edit_ordenes_servicio_path(marker), class:'map_link')}</td>
        <td style='float:right;'>#{ActionController::Base.helpers.link_to('EDITAR ORDEN', edit_ordenes_servicio_path(marker), class:'map_link')}</td>
        </tr></table>
        "
      else
        info_window_content = info_window_content+"  </table></div>
        <table><tr>
        <td style='float:right;'>#{ActionController::Base.helpers.link_to('EDITAR ORDEN', edit_ordenes_servicio_path(marker), class:'map_link')}</td>
        </tr></table>
        "
      end

        map_marker_data["d"+(index+1).to_s] = {info: info_window_content, lat: marker.OS_DESTINO_LAT.to_f, lng: marker.OS_DESTINO_LONG.to_f,icon: "/assets/destination1.png", remove: remove_marker(marker)}


    end
    map_marker_data
  end

####===================   Order Truck Position On Map
VEHICAL_TYPE_ICON={"AUTOMOVIL"=>"/assets/car.png","GRUA"=>"/assets/grua.png"}
def order_truck_location ordenes_servicios
  map_marker_data = {}
  ordenes_servicios.each_with_index do |marker, index|
    if marker.gruas.present?
      info_window_content = "<div> <h4><b>Ubicación de Grua#</b></h4>
      <table>
      <tr><td><b>Order # #{marker.ID}</b></td><td></td><td></td></tr>
      <tr>
      <td><b>Truck Id: #{marker.gruas.present? ? marker.gruas.PKGRUA : 'N/A'}</b></td>
      <td>,Modelo: #{marker.gruas.present? ? marker.gruas.GR_MODELO : 'N/A'}</td>
      <td> , Typo: #{marker.gruas.present? ? marker.gruas.GR_TIPO : "N/A"}</td>
      </tr>
      <tr><td><b>Operadore: #{marker.operadores.present? ? marker.operadores.OP_NOMBRE : "N/A"}</b></td><td></td><td></td></tr>
      </table>
      "
      key = marker.tipo_vehiculos.present? ? marker.tipo_vehiculos.TAUT_DESCRIPCION : ""
      if VEHICAL_TYPE_ICON.key?(key)
        icon =  VEHICAL_TYPE_ICON[key]
      else
        icon = ""#{}"/assets/truck.png"
      end
      map_marker_data["t"+(index+1).to_s] = {info: info_window_content, lat: marker.gruas.GR_UBICACION_LATITUD.to_f, lng: marker.gruas.GR_UBICACION_LONGITUD.to_f, icon: icon, remove: remove_marker(marker.gruas)}

    end
  end
  map_marker_data
end

end
