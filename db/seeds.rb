# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(
  name: "test",
  email: "test@test.com",
  password_digest: "password",
  image_url: ""
)
User.create(
  name: "Bob",
  email: "bob@test.com",
  password_digest: "password",
  image_url: ""
)

Item.create(
  name: "Untrue",
  artist: "Burial",
  release_date: "01,01,2007",
  label: "Hyperdub",
  image_url: "https://upload.wikimedia.org/wikipedia/en/6/64/BurialUntrue.jpg",
  description: "Early and iconic UK Dub album by producer Burial"
)

Item.create(
  name: "Beautiful Rewind",
  artist: "Four Tet",
  release_date: "04,10,2013",
  label: "Text Records",
  image_url: "https://upload.wikimedia.org/wikipedia/en/8/81/Four_Tet_-_Beautiful_Rewind.jpg",
  description: "An experimental hi-def album blending elements of Dub, House, Ambient, Lo-fi field recordings, World Music, and indie sensibilities"
)

Review.create(
  user_id: 1,
  item_id: 2,
  rating: 10,
  review_body: "Loved it"
)

List.create(
  user_id: 1,
  list_title: "Favorite Albums",
  list_desc: "A compilation of my favorite albums",
  list_image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2FBeautiful-Rewind-FOUR-TET%2Fdp%2FB00FJ6F8KW&psig=AOvVaw1ApPGKKLsFqC-N2SLpkyDr&ust=1667938706285000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCODY4oLynPsCFQAAAAAdAAAAABAN"
)

ListItem.create(
  list_id: 1,
  item_id: 2,
)
ListItem.create(
  list_id: 1,
  item_id: 1
)

Genre.create(
  name: "UK Dub"
)

Genre.create(
  name: "Techno"
)
Genre.create(
  name: "Sample-based"
)
Genre.create(
  name: "lo-fi"
)
Genre.create(
  name: "Indie"
)

GenreTag.create(
  genre_id: 1,
  item_id: 1
)
GenreTag.create(
  genre_id: 3,
  item_id: 1
)
GenreTag.create(
  genre_id: 4,
  item_id: 1
)
GenreTag.create(
  genre_id: 5,
  item_id: 2
)
GenreTag.create(
  genre_id: 4,
  item_id: 2
)