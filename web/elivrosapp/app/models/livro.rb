class Livro
  include Mongoid::Document
  
  field :url_pdf, type: String
  field :editora, type: String
  field :data_publicacao, type: Date  
  embeds_many :autors
  embeds_many :generos
  has_and_belongs_to_many :usuarios
end
