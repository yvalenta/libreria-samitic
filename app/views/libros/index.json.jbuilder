json.array!(@libros) do |libro|
  json.extract! libro, :id, :titulo, :descripcion, :ISBN
  json.url libro_url(libro, format: :json)
end
