json.extract! tarifas_servicio, :id, :PKSERVICIO, :SER_DESCRIPCION, :SER_NOTAS, :created_at, :updated_at
json.url tarifas_servicio_url(tarifas_servicio, format: :json)