class Genero
  include Mongoid::Document
  field :nome, type: String
  embedded_in :livro
end
