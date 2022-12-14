class Veterinario
  include Mongoid::Document
  field :nome, type: String
  field :cpf, type: String
  field :clinica_id, type: String
  
  belongs_to :clinica
  has_many :consultas
end
