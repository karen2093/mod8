json.extract! suscriptor, :id, :nombre, :apellido, :correo, :telefono, :twitter, :created_at, :updated_at
json.url suscriptor_url(suscriptor, format: :json)
