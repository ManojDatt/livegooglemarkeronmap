class DepositosPertenencias < ApplicationRecord
	belongs_to :depositos_inventarios
	validates_presence_of :PER_CANTIDAD, :PER_DESCRIPCION, :PER_CONDICION
 
end
