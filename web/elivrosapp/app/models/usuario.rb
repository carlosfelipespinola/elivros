class Usuario
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :nome, type: String
  field :sobrenome, type: String
  field :email, type: String
  field :senha, type: String
  
  has_many :avaliacaos
  has_and_belongs_to_many :livros
  embeds_one :numero_telefone
  embeds_one :dados_pagamento
end
