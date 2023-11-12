class SongPlayerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Song.stop
    Song.play
  end
end
