class Song

  class << self
    def play(filename: nil)
      # Pick a random song from assets/songs/*
      songs_directory = Rails.root.join('app', 'assets', 'songs')
      songs = Dir.glob("#{songs_directory}/*.mp3")
      filename = songs.sample


      `play #{filename}`
    end

    def stop
    end
  end

end
