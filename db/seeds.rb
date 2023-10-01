# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating movies..."

wonder_woman = Movie.new(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s.", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
wonder_woman.save
redemption = Movie.new(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison.", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
redemption.save
titanic = Movie.new(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
titanic.save
ocean = Movie.new(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
ocean.save

puts "4 movies were created..."

puts "Creating lists..."

list_action = List.new(title: "Action")
file = URI.open("https://hips.hearstapps.com/hmg-prod/images/veh-ia-1751-1576604159.jpg")
list_action.photo.attach(io: file, filename: "Action", content_type: "image/png")
list_action.save

list_drama = List.new(title: "Drama")
file = URI.open("https://hips.hearstapps.com/hmg-prod/images/veh-ia-1751-1576604159.jpg")
list_drama.photo.attach(io: file, filename: "Drama", content_type: "image/png")
list_drama.save

list_comic = List.new(title: "Comic")
file = URI.open("https://hips.hearstapps.com/hmg-prod/images/veh-ia-1751-1576604159.jpg")
list_comic.photo.attach(io: file, filename: "Comic", content_type: "image/png")
list_comic.save

list_superhero= List.new(title: "Superhero")
file = URI.open("https://hips.hearstapps.com/hmg-prod/images/veh-ia-1751-1576604159.jpg")
list_superhero.photo.attach(io: file, filename: "Superhero", content_type: "image/png")
list_superhero.save

puts "4 lists were created..."

puts "Creating bookmarks..."
Bookmark.new(comment: "Amazing movie!", list_id: list_action[:id], movie_id: wonder_woman[:id])
Bookmark.new(comment: "Very nice one!", list_id: list_action[:id], movie_id: redemption[:id])

Bookmark.new(comment: "Loved that movie!", list_id: list_drama[:id], movie_id: titanic[:id])
Bookmark.new(comment: "Really cool  movie!", list_id: list_drama[:id], movie_id: redemption[:id])

Bookmark.new(comment: "Fantastic movie!", list_id: list_superhero[:id], movie_id: wonder_woman[:id])
