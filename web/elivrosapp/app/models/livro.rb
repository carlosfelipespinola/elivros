class Livro
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :url_pdf, type: String
  field :editora, type: String
  field :data_publicacao, type: Date  
  embeds_many :autors
  embeds_many :generos
  has_and_belongs_to_many :usuarios
  has_many :avaliacaos
end
