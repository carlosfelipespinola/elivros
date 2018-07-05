class Genero
  include Mongoid::Document

  #atributos e relacoes
  field :nome, type: String
  embedded_in :livro

  #metodos staticos
  def self.generos
    ['auto-ajuda','biografias','business']
  end
end
