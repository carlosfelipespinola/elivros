class NumeroTelefone
  include Mongoid::Document

  field :codigo_area_pais, type: String
  field :codigo_area, type: String
  field :numero, type: String

  embedded_in :usuario
end
