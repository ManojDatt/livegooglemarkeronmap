class Operadore < ApplicationRecord
validates :OP_NOMBRE, :OP_DOMICILIO, :OP_INGRESO, :OP_LICESTATAL, :OP_CLAVE,  presence: true
validates_uniqueness_of :OP_CLAVE, :message => "debe ser única en el sistema"
has_many :ordenes_servicios , class_name: "OrdenesServicio", foreign_key: "ID"
end
