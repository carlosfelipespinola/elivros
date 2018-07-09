class Livro
  include Mongoid::Document
  include Mongoid::Timestamps
  field :titulo, type: String
  field :descricao, type: String
  field :url_pdf, type: String
  field :url_capa, type: String
  field :editora, type: String
  field :data_publicacao, type: Date  #deu pau
  embeds_many :autors
  embeds_many :generos
  has_and_belongs_to_many :usuarios
  has_many :avaliacaos

  def self.find_by_id_and_update(id, update)
    livro = find_by(_id: id)
    if ! livro then return false end
      
    if ! livro[:generos] then return false end

    if livro[:generos].length < 1 then return false end
  
    return livro.update_attributes(update.permit(:titulo, :descricao, :url_pdf, :url_capa, :editora, :data_publicacao, :generos))
  end
end
