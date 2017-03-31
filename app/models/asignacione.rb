class Asignacione < ApplicationRecord

belongs_to :gruas
belongs_to :operadores
validates :PKGRUA, :PKOPERADOR, :AS_FECHAINICIO, :AS_FECHAFIN,  presence: true
end
