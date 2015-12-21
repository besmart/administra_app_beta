json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :apellido, :correo, :clave, :login
  json.url usuario_url(usuario, format: :json)
end
