require_relative 'space_jams'

class Album
  attr_reader :id, :title, :artist
  attr_accessor :tracks
  def initialize(id, title, artists)
    @id = id
    @title = title
    @artists = artists
    @tracks = []
  end

  def duration_min
    sum = 0
    tracks.each do |track|
      sum += track[:duration_ms].to_f / 60000
    end
      sum.round(2)
  end

  def summary
    text = "Name: #{@title}\n"\
           "Artist(s): #{@artists}\n"\
           "Duration (min.): #{duration_min()}\n"\
           "Tracks:\n"
    tracks.each do |track|
      text += "- #{track[:title]}\n"
    end
    text
  end
end


# `id` - returns the ID of the album
# `title` - returns the title of the album
# `artists` - returns the name of the artist(s) on the album
# `tracks` - returns an array of hashes representing each track on the album
# `duration_min` - returns the duration of the album in minutes (`duration_ms` from the data is duration in milliseconds)
# `summary` - __returns a string__ of summary information in the format specified in the example above. No `puts` or `print` statements should exist in this method! That is a job delegated to the `runner.rb` file.
#Name: Space Jams
#Artist(s): Tony Wrecks
