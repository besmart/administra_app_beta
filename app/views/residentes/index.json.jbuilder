json.array!(@residentes) do |residente|
  json.extract! residente, :id, :nombre, :apellido, :identificacion, :fecha_nacimiento, :apartamento_id
  json.url residente_url(residente, format: :json)
end
