module Admin::LivrosHelper
  def atributo_ou_string_vazia(livro, atributo)
    if ! defined? livro then return "" end
    
    if livro == nil then return "" end

    if ! defined? livro[atributo] then return "" end

    if livro[atributo] == nil then return "" end

    return livro[atributo]
    
  end

  def atributo_data_ou_string_vazia(livro,atributo)
    data = atributo_ou_string_vazia(livro,atributo)
    data.to_s.split(" ")[0]
  end
end
