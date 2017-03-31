class Grua < ApplicationRecord
belongs_to :empresas
belongs_to :combustibles
belongs_to :marcas
has_many :ordenes_servicios , class_name: "OrdenesServicio", foreign_key: "ID"
has_many :asignaciones, class_name: "Asignacione", foreign_key: "PKGRUA"
validates :PKEMPRESA, :GR_CLAVE, :PKCOMBUSTIBLE, :PKMARCA, :GR_DESCRIPCION, :GR_CAPACIDAD, :GR_MODELO, :GR_MOTOR, :GR_PLACAESTATAL, :GR_TIPO,  presence: true
validates_uniqueness_of :GR_CLAVE, :message => "debe ser única en el sistema"

end
# ActiveRecord::Base.logger = nil
