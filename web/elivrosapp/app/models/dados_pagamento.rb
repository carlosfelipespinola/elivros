class DadosPagamento
  include Mongoid::Document
  include Mongoid::Timestamps

  field :formaPagamento, type: String
  embeds_one :dados_cartao
  embeds_one :dados_bancario
  embedded_in :usuario
end
