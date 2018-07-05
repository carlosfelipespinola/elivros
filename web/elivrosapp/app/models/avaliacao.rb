class Avaliacao
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :comentario, type: String
  field :nota, type: Integer
  
  belongs_to :usuario
  belongs_to :livro
end
