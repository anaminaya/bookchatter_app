User.create(email: "leslie@test.com",
  name: "Leslie",
  genre: "fiction",
  password: 'password',
  password_confirmation: 'password',
  bio: 'Here is my bio. I am fantastic.'
)


User.create(email: "james@test.com",
  name: "James",
  genre: "Fantasy",
  password: 'password',
  password_confirmation: 'password',
  bio: 'Here is my bio. I am fantastic.'
)
User.create(email: "andrew@test.com",
  name: "Andrew",
  genre: "Historical Fiction",
  password: 'password',
  password_confirmation: 'password',
  bio: 'Here is my bio. I am fantastic.'
)

Book.create(title: "Me Before You",
author: "Jojo Moyes",
genre: "Fiction"
)

Book.create(title: "The Kite Runner",
author: "Khaleed Hussain",
genre: "Fiction"
)

Book.create(title: "Divergent",
author: "Veronica Roth",
genre: "Fantasy"
)

Message.create(message: 'I really enjoyed reading Me Before you.')
Message.create(message: 'I really enjoyed reading The Kite Runner.')
Message.create(message: 'I really enjoyed reading Divergent.')
