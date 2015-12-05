json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :comentario, :calificacion, :user_id, :libro_id
  json.url comentario_url(comentario, format: :json)
end
