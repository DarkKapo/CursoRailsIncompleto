json.extract! book, :id, :titulo, :autor, :state, :borrowed_at, :return_at, :created_at, :updated_at
json.url book_url(book, format: :json)
