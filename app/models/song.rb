class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    #self.each do |song|
      if self.artist.name != "Drake"
        self.artist = Artist.new(name: "Drake")
      end
    #end
  end

end
