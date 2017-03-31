class OrdenesServicio < ApplicationRecord
	has_many :ordenes_servicio_precios, class_name: "OrdenesServicioPrecio", foreign_key: "OS_ID", dependent: :destroy
	accepts_nested_attributes_for :ordenes_servicio_precios, update_only: true, allow_destroy:  true
 	validates_presence_of :ordenes_servicio_precios
	 def set_ordenes_servicio
      last_ordenes_servicio = OrdenesServicio.maximum(:ID)
      self.ID = last_ordenes_servicio.to_i + 1
   end
	 belongs_to :clientes, class_name: "Cliente", foreign_key: "PKCLIENTE", dependent: :destroy
	 belongs_to :gruas, class_name: "Grua", foreign_key: "PKGRUA"
	 belongs_to :colores, class_name: "Colore", foreign_key: "PKCOLOR"
	 belongs_to :tipo_vehiculos, class_name: "TipoVehiculo", foreign_key: "PKTIPO_AUTO"
	 belongs_to :operadores, class_name: "Operadore", foreign_key: "PKOPERADOR"
end
