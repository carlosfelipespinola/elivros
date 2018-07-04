class Livro
  include Mongoid::Document
  include Mongoid::Timestamps
  field :titulo, type: String
  field :capa_img_url, type: String

end
