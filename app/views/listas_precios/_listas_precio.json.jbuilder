json.extract! listas_precio, :id, :PKLISTA, :LIS_DEFAULT_TAR, :LIS_DESCRIPCION, :created_at, :updated_at
json.url listas_precio_url(listas_precio, format: :json)