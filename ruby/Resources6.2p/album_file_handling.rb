require './input_functions'

# Task 6.2 T - use the code from 5.1 and 5.2 T to help with this

module Genre
  POP, CLASSIC, JAZZ, ROCK = *1..4
end

$genre_names = ['Null', 'Pop', 'Classic', 'Jazz', 'Rock']

class Album
  # you will need to add tracks to the following and the initialize()
    attr_accessor :title, :artist, :genre, :tracks

# complete the missing code:
    def initialize (artist, title, genre, tracks)
       @artist = artist
       @title = title
       @genre = genre
       @tracks = tracks
    end
end

class Track
    attr_accessor :name, :location

    def initialize (name, location)
        @name = name
        @location = location
    end
end

# Reads in and returns a single track from the given file

def read_track(music_file)
    name = music_file.gets
    location = music_file.gets
    track = Track.new(name, location)
end

# Returns an array of tracks read from the given file

def read_tracks(music_file)
      tracks = Array.new()
      count = music_file.gets.to_i
  # Put a while loop here which increments an index to read the tracks
    index = 0
        while index < count
      track = read_track(music_file)
      tracks << track
    index += 1
        end
        return tracks
end

# Takes an array of tracks and prints them to the terminal

def print_tracks(tracks)
	index = 0
  while index < tracks.length
    print_track(tracks[index])
    index += 1
  end
end

# Reads in and returns a single album from the given file, with all its tracks

def read_album(music_file)

  # read in all the Album's fields/attributes including all the tracks
  # complete the missing code
    artist = music_file.gets
    title = music_file.gets
    genre = music_file.gets
    tracks = read_tracks(music_file)
        album = Album.new(artist, title, genre, tracks)
        return album
end


# Takes a single album and prints it to the terminal along with all its tracks
def print_album(album)

  # print out all the albums fields/attributes
  # Complete the missing code.
    puts('Album artist is ' + album.artist.to_s())
    puts('Album title is ' + album.title.to_s()) 
    puts('Genre is ' + album.genre.to_s)
    puts($genre_names[album.genre.to_i])
    # print out the tracks
    #puts('Tracks: ' + album.tracks.to_s)
    print_tracks(album.tracks)
end

# Takes a single track and prints it to the terminal
def print_track(track)
    puts('Track title is: ' + track.name)
    puts('Track file location is: ' + track.location)
end


# Reads in an Album from a file and then prints all the album
# to the terminal

def main()
      music_file = File.new("album.txt", "r")
      album = read_album(music_file)
      #tracks = read_tracks(music_file)

      print_album(album)
      #print_tracks(tracks)
      music_file.close()

end

main()

