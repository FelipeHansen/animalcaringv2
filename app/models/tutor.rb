class Tutor
  include Mongoid::Document
  field :nome, type: String
  field :cpf, type: String
  field :telefone, type: String

  has_many :animals
end
