json.array!(@products) do |product|
  json.extract! product, :id, :Nombre, :Precio, :descripcion
  json.url product_url(product, format: :json)
end
