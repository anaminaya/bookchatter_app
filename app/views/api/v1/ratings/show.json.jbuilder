json.id @book.id
json.title @book.title
json.image @book.image.link
json.author @book.author
json.genre @book.genre
json.description @book.description
json.user_rating @book.ratings.find_by(user_id: current_user.id)
json.stars [
  {rating: 1},
  {rating: 2},
  {rating: 3},
  {rating: 4},
  {rating: 5},
]
