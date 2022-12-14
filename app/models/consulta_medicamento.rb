class ConsultaMedicamento
  include Mongoid::Document
  field :consulta_id, type: String
  field :medicamento_id, type: String

  belongs_to :consulta
  belongs_to :medicamento
end
