class Gallery
  attr_reader :name, :city
  @@all=[]

  def initialize(name, city)
    @name = name
    @city = city
    @@all <<self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|painting|
      painting.gallery == self}
    end

  def artists
    paintings.map do |artist_ins| 
    artist_ins.artist
    end.uniq
  end

def artist_names
  artists.map {|artist_ins|
  artist_ins.name}.uniq
end

def most_expensive_painting
  self.paintings.max_by{|painting| painting.price}
end
  end