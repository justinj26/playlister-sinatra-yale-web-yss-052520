class Genre < ActiveRecord::Base 
    has_many :songs
    has_many :artists, through: :songs 

    def slug 
        slugger = self.name.split(' ').map{|word| word.downcase }
        slugger.join('-')
    end

    def self.find_by_slug(slug)
        slugger = slug.split('-').map{|word| word.capitalize }
        name = slugger.join(' ')
        Genre.find_by(name: name)
    end
end