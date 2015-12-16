json.array!(@vehiculos) do |vehiculo|
  json.extract! vehiculo, :id, :placa, :descripcion, :marca, :color, :apartamento_id
  json.url vehiculo_url(vehiculo, format: :json)
end
