class Clinica
  include Mongoid::Document
  field :nome, type: String
  field :endereco, type: String
  field :descricao, type: String

  has_many :veterinarios
end
