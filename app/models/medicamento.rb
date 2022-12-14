class Medicamento
  include Mongoid::Document
  field :nome, type: String
  field :descricao, type: String
end
