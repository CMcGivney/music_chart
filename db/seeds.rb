10.times do 
  Song.create(
    title: Faker::Music::Phish.song,
    genre: Faker::Space.planet,
    released: Faker::Date.backward(18),
    featuring: Faker::TvShows::RickAndMorty.character,
    image: Faker::LoremFlickr.image("50x60"),
    musician: Faker::Music::RockBand.name,
  )
  end