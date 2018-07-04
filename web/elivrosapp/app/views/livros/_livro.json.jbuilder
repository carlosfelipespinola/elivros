json.extract! livro, :id, :titulo, :capa_img_url, :created_at, :updated_at
json.url livro_url(livro, format: :json)
