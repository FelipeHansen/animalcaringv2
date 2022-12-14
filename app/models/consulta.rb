class Consulta
  include Mongoid::Document
  field :data_consulta, type: String
  field :descricao, type: String
  field :animal_id, type: String
  field :veterinario_id, type: String

  belongs_to :animal
  belongs_to :veterinario
end
