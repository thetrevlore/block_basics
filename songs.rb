require_relative 'my_enumerable.rb'

class Song
  attr_reader :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end

  def each_filename
    # ["mp3", "wav", "aac"].each { |ext| yield "#{@name.gsub(" ", "-")}-#{@artist}.#{ext}".downcase }
    basename = "#{@name}-#{@artist}.".gsub(" ", "-").downcase
    extensions = ["mp3", "wav", "aac"];
    extensions.each { |ext| yield(basename + ext) }
  end
end

song1 = Song.new("Okie From Muskogee", "Merle", 5)
song2 = Song.new("Ramblin' Man", "Hank", 7)
song3 = Song.new("Good Hearted Woman", "Waylon", 6)

# song1.each_filename { |filename| puts filename }


class Playlist
  # include Enumerable
  include MyEnumerable

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def each
    @songs.each do |song|
      # puts "Yielding #{song.name}..."
      yield(song)
    end
  end

  def play_songs
    each { |song| song.play }
  end

  def each_tagline
    each { |song| yield "#{song.name} - #{song.artist}" }
  end

  def each_by_artist(artist)
    # each { |song| yield(song) if song.artist == artist }
    my_select { |song| song.artist == artist }.each { |song| yield song }
  end
end

playlist = Playlist.new("Country/Western, Y'all!")
playlist.add_song(song1)
playlist.add_song(song2)
playlist.add_song(song3)

# playlist.each { |song| song.play }
# playlist.play_songs

# okie_songs = playlist.my_select { |song| song.name =~ /Okie/ }
# p okie_songs

# non_okie_songs = playlist.reject { |song| song.name =~ /Okie/ }
# p non_okie_songs

# p playlist.any? { |song| song.artist == "Hank" }
# p playlist.detect { |song| song.artist == "Hank" }

# song_labels = playlist.my_map { |song| "#{song.name} - #{song.artist}" }
# p song_labels

# total_duration = playlist.reduce(0) { |sum, song| sum + song.duration }
# p total_duration

# playlist.each_tagline { |tagline| puts tagline }

# playlist.each_by_artist("Hank") { |song| song.play }
# playlist.each_by_artist("Waylon") { |song| song.play }

# total_duration = playlist.my_reduce(0) { |sum, song| sum + song.duration }
# p total_duration