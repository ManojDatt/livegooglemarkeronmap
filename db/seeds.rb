# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.delete_all
Role.create([{ name: 'Admin' }, { name: 'Cabina' }])

if TarifasServicio.count <=0
	
	TarifasServicio.create([{ SER_DESCRIPCION: 'ARRASTRE' }, { SER_DESCRIPCION: 'KILOMETRO RECORRIDO' },
{ SER_DESCRIPCION: 'BANDERAZO' },{ SER_DESCRIPCION: 'DOLLY' },{ SER_DESCRIPCION: 'ASISTENCIA' },{ SER_DESCRIPCION: 'HORA MANIOBRA' },{ SER_DESCRIPCION: 'HORA MANIOBRA' },
{ SER_DESCRIPCION: 'HORA ESPERA' },
{ SER_DESCRIPCION: 'PENSION' }])
	
end

if CategoriasVehiculo.count <=0
	
	CategoriasVehiculo.create([{ CAT_DESCRIPCION: 'A' }, { CAT_DESCRIPCION: 'B' },
{ CAT_DESCRIPCION: 'C' },{ CAT_DESCRIPCION: 'D' }])
	
end