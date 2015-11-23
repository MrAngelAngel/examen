json.array!(@ruizs) do |ruiz|
  json.extract! ruiz, :id, :Cliente, :Direccion, :TotalFactura, :Fecha
  json.url ruiz_url(ruiz, format: :json)
end
