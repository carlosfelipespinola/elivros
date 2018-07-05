class Autor
  include Mongoid::Document
  field :nome, type: String
  field :sobrenome, type: String
  embedded_in :livro
end
