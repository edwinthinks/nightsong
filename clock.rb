require 'clockwork'
require 'active_support/time' # Allow numeric durations (eg: 1.minutes)
require './config/boot'
require './config/environment'

module Clockwork
  handler do |job|
    puts "Running #{job}"
  end

  every(1.minute, 'Play a song') do
    SongPlayerJob.perform_later
  end
end
