class DadosCartao
  include Mongoid::Document
  
  field :numero, type: String
  field :cvc, type: String
  field :nome, type: String
  field :data_expiracao, type: Date

  embedded_in :dados_pagamento
end
