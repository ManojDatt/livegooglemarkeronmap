json.extract! categorias_vehiculo, :id, :PKCATEGORIA, :CAT_DESCRIPCION, :CAT_NOTAS, :created_at, :updated_at
json.url categorias_vehiculo_url(categorias_vehiculo, format: :json)