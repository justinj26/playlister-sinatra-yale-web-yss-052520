class Song < ActiveRecord::Base 

    belongs_to :artist 
    belongs_to :genre 
    has_many :song_genres 
    has_many :genres, through: :song_genres

    def slug 
        slugger = self.name.split(' ').map{|word| word.downcase }
        slugger.join('-')
    end

    def self.find_by_slug(slug)
        slugger = slug.split('-').map{|word| word.capitalize }
        name = slugger.join(' ')
        Song.find_by(name: name)
    end
end 