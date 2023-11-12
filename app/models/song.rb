class Song

  class << self

    #
    # Plays a random song from assets/songs/* directory
    # @return [void]
    def play
      # Pick a random song from assets/songs/* directory
      songs_directory = Rails.root.join('app', 'assets', 'songs')
      songs = Dir.glob("#{songs_directory}/*.mp3")
      filename = songs.sample

      `play #{filename}`
    end

    #
    # Stops all songs playing
    # @return [void]
    def stop
      `killall play`
    end
  end

end
