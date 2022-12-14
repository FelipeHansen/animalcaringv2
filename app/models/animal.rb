class Animal
  include Mongoid::Document
  field :nome, type: String
  field :descricao, type: String

  belongs_to :tutor
  has_many :consultas
end
