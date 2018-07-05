class DadosBancario
  include Mongoid::Document
  
  field :numero_conta, type: String
  field :banco_conta, type: String

  embedded_in :dados_pagamento
end
