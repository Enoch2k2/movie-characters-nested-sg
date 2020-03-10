json.extract! movie, :id, :title, :duration, :genre, :release_date, :created_at, :updated_at
json.url movie_url(movie, format: :json)
