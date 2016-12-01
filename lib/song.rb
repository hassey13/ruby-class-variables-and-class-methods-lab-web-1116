class Song
      attr_accessor :name, :artist, :genre
      @@count = 0
      @@artists = []
      @@genres = []

      def initialize(name, artist, genre)
            @name = name
            @artist = artist
            @genre = genre
            @@artists << artist
            @@genres << genre
            @@count += 1
      end

      def self.artists
            @@artists.uniq
      end

      def self.genres
            @@genres.uniq
      end

      def self.artist_count
            @@artists.each_with_object({}) do |song_artist,hash|
                  hash[song_artist] = count_attr(@@artists,song_artist)
            end
      end

      #count total genres
      def self.genre_count
            @@genres.each_with_object({}) do |song_genre,hash|
                  hash[song_genre] = count_attr(@@genres,song_genre)
            end
      end

      def self.count_attr(array,element)
            count = 0
            array.each do |el|
                  if element == el
                        count+=1
                  end
            end
            count
      end

      def self.count
            @@count
      end

end
