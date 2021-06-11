class Artist
  attr_reader :name, :years_experience
  @@all=[]

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def painting
    Painting.all.select{|painting|
    painting.artist == self}
  end

  def galleries
      #self.paintings.map {|galley_ins| }
      painting.map {|galley_ins|
      galley_ins.gallery}
    end

  def cities
      galleries.map {|galley_ins|
      galley_ins.city}
    end

  def self.total_experience
     self.all.sum{|artist| artist.years_experience}
    end

  #Returns an instance of the artist with the highest amount of paintings per year of experience.
  def self.most_prolific
    self.all.max_by{|artist| artist.painting.count.to_f/artist.years_experience}
  end
  
  def self.create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
end
end
