json.array!(@angels) do |angel|
  json.extract! angel, :id, :Nombre, :Cantidad, :Precio, :Fecha, :Credito
  json.url angel_url(angel, format: :json)
end
