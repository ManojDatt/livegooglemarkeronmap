# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170328053906) do

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role_id"
    t.string   "username"
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
    t.index ["username"], name: "index_admins_on_username", unique: true, using: :btree
  end

  create_table "asignaciones", primary_key: "PKASIGNACION", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "PKGRUA"
    t.integer  "PKOPERADOR"
    t.datetime "AS_FECHAINICIO"
    t.datetime "AS_FECHAFIN"
    t.string   "AS_OBSERVACIONES"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "categorias_vehiculos", primary_key: "PKCATEGORIA", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "CAT_DESCRIPCION", limit: 100
    t.string   "CAT_NOTAS",       limit: 250
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "ciudades", primary_key: "PKCIUDAD", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "PKESTADO"
    t.string   "CD_NOMBRE"
    t.decimal  "CD_KM",         precision: 10
    t.boolean  "VALOR_OMISION"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "clientes", primary_key: "PKCLIENTE", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "NOMBRE"
    t.string   "DOMICILIO"
    t.string   "COLONIA"
    t.string   "RFC"
    t.integer  "PKESTADO"
    t.integer  "PKCIUDAD"
    t.string   "CP"
    t.string   "CONTACTO_TELEFONO1"
    t.string   "CONTACTO_TELEFONO2"
    t.string   "CONTACTO_TELEFONO3"
    t.decimal  "IVA_PORCENTAJE",           precision: 10
    t.decimal  "RETENCION_IVA_PORCENTAJE", precision: 10
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "PKLISTA"
  end

  create_table "colores", primary_key: "PKCOLOR", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "COL_DESCRIPCION", limit: 20
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "combustibles", primary_key: "PKCOMBUSTIBLE", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "COM_FINICIO"
    t.date     "COM_FFIN"
    t.string   "COM_DESCRIPCION", limit: 40
    t.decimal  "COM_PRECIO",                 precision: 10
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "configuraciones", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Llave"
    t.string   "Valor"
    t.text     "Descripcion", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "depositos", primary_key: "PKDEPOSITO", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "DEP_NOMBRE", limit: 200
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "depositos_imagenes", primary_key: "PKIMAGEN", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "PKINVENTARIO"
    t.text     "IMG_IMAGEN",   limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "depositos_inventarios", primary_key: "PKINVENTARIO", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "INV_NUMORDEN"
    t.integer  "PKTIPO_AUTO"
    t.date     "INV_FDETENCION"
    t.string   "INV_LUGARDETENCION",  limit: 200
    t.string   "INV_FOLIODETENCION",  limit: 50
    t.string   "INV_MOTIVODETENCION", limit: 200
    t.string   "INV_AUTORIDAD",       limit: 200
    t.integer  "PKDEPOSITO"
    t.integer  "PKMARCA"
    t.integer  "PKSUBMARCA"
    t.integer  "PKCOLOR"
    t.integer  "INV_MODELO"
    t.string   "INV_NOSERIE",         limit: 200
    t.string   "INV_NOMOTOR",         limit: 100
    t.string   "INV_CONDICION",       limit: 200
    t.date     "INV_FINGRESO"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "INV_PLACAS",          limit: 10
    t.datetime "INV_FSALIDA"
  end

  create_table "depositos_pertenencias", primary_key: "PKPERTENENCIA", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "PKINVENTARIO"
    t.integer  "PER_CANTIDAD"
    t.string   "PER_DESCRIPCION", limit: 200
    t.string   "PER_CONDICION",   limit: 100
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "depositos_salidas", primary_key: "PKINVENTARIO", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "S_CLIENTE",       limit: 200
    t.string   "S_RFC",           limit: 13
    t.date     "S_FECHAPAGO"
    t.string   "S_METODOPAGO",    limit: 2
    t.string   "S_FORMA_DE_PAGO", limit: 40
    t.string   "S_NUMCTA",        limit: 4
    t.string   "S_DOMICILIO",     limit: 250
    t.string   "S_NoExterior",    limit: 20
    t.string   "S_NoInterior",    limit: 20
    t.string   "S_Colonia",       limit: 200
    t.string   "S_Localidad",     limit: 200
    t.string   "S_Municipio",     limit: 200
    t.string   "S_Estado",        limit: 200
    t.string   "S_Pais",          limit: 200
    t.string   "S_CodigoPostal",  limit: 5
    t.integer  "S_NumDias"
    t.decimal  "S_ImporteDiario",             precision: 64, scale: 12
    t.decimal  "S_SubTotal",                  precision: 64, scale: 12
    t.decimal  "S_IVA",                       precision: 64, scale: 12
    t.decimal  "S_Total",                     precision: 64, scale: 12
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
    t.string   "S_REFERENCIA",    limit: 250
  end

  create_table "empresas", primary_key: "PKEMPRESA", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "EMP_NOMBRE_COMERCIAL", limit: 250
    t.string   "EMP_RAZON_SOCIAL",     limit: 250
    t.string   "EMP_DIRECCION",        limit: 250
    t.string   "EMP_COLONIA",          limit: 100
    t.string   "EMP_CP",               limit: 10
    t.string   "EMP_RFC",              limit: 13
    t.integer  "EMP_PKCIUDAD"
    t.integer  "EMP_PKESTADO"
    t.string   "EMP_TEL1",             limit: 16
    t.string   "EMP_TEL2",             limit: 16
    t.string   "EMP_FAX",              limit: 16
    t.string   "EMP_EMAIL",            limit: 200
    t.integer  "EMP_TIPO"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "estados", primary_key: "PKESTADO", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "PKPAIS"
    t.text     "EDO_DESCRIPCION", limit: 65535
    t.string   "ABREVIATURA"
    t.boolean  "VALOR_OMISION"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "gruas", primary_key: "PKGRUA", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "PKEMPRESA"
    t.string   "GR_CLAVE",              limit: 20
    t.integer  "PKCOMBUSTIBLE"
    t.integer  "PKMARCA"
    t.string   "GR_DESCRIPCION",        limit: 40
    t.string   "GR_CAPACIDAD",          limit: 20
    t.string   "GR_MODELO",             limit: 4
    t.string   "GR_MOTOR",              limit: 20
    t.string   "GR_PLACAESTATAL",       limit: 20
    t.string   "GR_PLACAFEDERAL",       limit: 20
    t.string   "GR_PERMISOESTATAL",     limit: 20
    t.string   "GR_PERMISOFEDERAL",     limit: 20
    t.string   "GR_TIPO",               limit: 40
    t.integer  "GR_ODOMETRO"
    t.integer  "GR_HOROMETRO"
    t.decimal  "GR_UBICACION_LATITUD",              precision: 10, scale: 6
    t.decimal  "GR_UBICACION_LONGITUD",             precision: 10, scale: 6
    t.datetime "GR_ULTIMO_REPORTE"
    t.string   "GR_BASE",               limit: 250
    t.string   "GR_ESTADO",             limit: 50
    t.string   "GR_NO_SERIE_RADIO",     limit: 15
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
  end

  create_table "listas_precios", primary_key: "PKLISTA", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "LIS_DEFAULT_TAR"
    t.string   "LIS_DESCRIPCION", limit: 200
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "listas_precios_detalles", primary_key: "ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "PKLISTA"
    t.integer  "PKCATEGORIA"
    t.integer  "PKSERVICIO"
    t.decimal  "LIS_PRECIOD", precision: 10, scale: 2
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "marcas", primary_key: "PKMARCA", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "MAR_DESCRIPCION"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "operadores", primary_key: "PKOPERADOR", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "OP_NOMBRE",          limit: 40
    t.string   "OP_DOMICILIO",       limit: 200
    t.datetime "OP_INGRESO"
    t.string   "OP_LICESTATAL",      limit: 20
    t.string   "OP_TIPOLICESTATAL",  limit: 20
    t.datetime "OP_VENC_LICESTATAL"
    t.string   "OP_LICFEDERAL",      limit: 20
    t.string   "OP_TIPOLICFEDERAL",  limit: 20
    t.datetime "OP_VEN_LICFEDERAL"
    t.string   "OP_CEL_SERIE",       limit: 20
    t.string   "OP_CEL_NUMERO",      limit: 10
    t.string   "OP_ESTADO",          limit: 15
    t.string   "OP_CLAVE",           limit: 20
    t.datetime "OP_FECHAACTIVO"
    t.string   "OP_ACTIVO",          limit: 8
    t.string   "OP_NIP",             limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "ordenes_servicio_precios", primary_key: "ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "OS_ID"
    t.integer  "PKSERVICIO"
    t.decimal  "OSP_PRECIO",   precision: 10
    t.decimal  "OSP_CANTIDAD", precision: 10
    t.decimal  "OSP_SUBTOTAL", precision: 10
    t.decimal  "OSP_TAX",      precision: 10
    t.decimal  "OSP_TOTAL",    precision: 10
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "ordenes_servicios", primary_key: "ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "OS_FECHAALTA"
    t.integer  "PKCLIENTE"
    t.integer  "PKCOLOR"
    t.integer  "PKSUBMARCA"
    t.integer  "PKGRUA"
    t.integer  "PKOPERADOR"
    t.integer  "OS_TCOMPROMISO"
    t.string   "OS_NOMBRE",           limit: 60
    t.string   "OS_TELEFONO",         limit: 15
    t.string   "OS_PLACAS",           limit: 12
    t.string   "OS_MODELO",           limit: 4
    t.string   "OS_POLIZA",           limit: 20
    t.string   "OS_SINIESTRO",        limit: 20
    t.string   "OS_AUTORIZACION",     limit: 20
    t.string   "OS_AJUSTADOR",        limit: 60
    t.string   "OS_ASEGURADO",        limit: 60
    t.string   "OS_PROGRAMADA",       limit: 15
    t.datetime "OS_FECHAPROGRAMADA"
    t.string   "OS_ORIGEN",           limit: 250
    t.decimal  "OS_ORIGEN_LAT",                     precision: 10, scale: 6
    t.decimal  "OS_ORIGEN_LONG",                    precision: 10, scale: 6
    t.text     "OS_ORIGEN_NOTAS",     limit: 65535
    t.string   "OS_DESTINO",          limit: 250
    t.decimal  "OS_DESTINO_LAT",                    precision: 10, scale: 6
    t.decimal  "OS_DESTINO_LONG",                   precision: 10, scale: 6
    t.text     "OS_DESTINO_NOTAS",    limit: 65535
    t.datetime "OS_FECHAASIGNACION"
    t.string   "OS_ESTADO",           limit: 20
    t.datetime "OS_FECHALLEGADA"
    t.datetime "OS_FECHAINCIO"
    t.datetime "OS_FECHAFIN"
    t.datetime "OS_FECHATERMINO"
    t.integer  "OS_ODOMETROFINAL"
    t.integer  "OS_ODOMETROINICIAL"
    t.integer  "OS_HOROMETROINICIAL"
    t.integer  "OS_HOROMETROFINAL"
    t.integer  "OS_HRINTER"
    t.integer  "OS_KMINTER"
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
    t.string   "OS_TIPO_SERVICIO"
    t.integer  "PKTIPO_AUTO"
    t.integer  "PKMARCA"
  end

  create_table "pais", primary_key: "PKPAIS", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "PA_DESCRIPCION", limit: 65535
    t.string   "CODIGOINT"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_marcas", primary_key: "PKSUBMARCA", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "PKMARCA"
    t.integer  "PKTIPO_AUTO"
    t.string   "SUB_DESCRIPCION"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "tarifas_servicios", primary_key: "PKSERVICIO", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "SER_DESCRIPCION", limit: 100
    t.string   "SER_NOTAS",       limit: 250
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "tipo_vehiculos", primary_key: "PKTIPO_AUTO", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "PKCATEGORIA"
    t.string   "TAUT_DESCRIPCION"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
