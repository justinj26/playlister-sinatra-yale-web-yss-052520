# Add seed data here. Seed your database with `rake db:seed`

# drake = Artist.new(name: "Drake")
# kendrick = Artist.new(name: "Kendrick Lamar")
# beyonce = Artist.new(name: "Beyonce")
# kanye = Artist.new(name: "Kanye West")

# rap = Genre.new(name: "Rap")
# hip_hop = Genre.new(name: "Hip-Hop")
# pop = Genre.new(name: "Pop")


# toosie = Song.new(name: "Toosie Slide", artist_id: drake.id, genre_ids: rap.id)
Artist.destroy_all
Song.destroy_all
Genre.destroy_all



LibraryParser.parse 