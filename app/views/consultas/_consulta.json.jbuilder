json.extract! consulta, :id, :data_consulta, :descricao, :animal_id, :veterinario_id, :created_at, :updated_at
json.url consulta_url(consulta, format: :json)
