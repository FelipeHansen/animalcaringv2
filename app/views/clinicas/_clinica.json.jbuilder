json.extract! clinica, :id, :nome, :endereco, :descricao, :created_at, :updated_at
json.url clinica_url(clinica, format: :json)
