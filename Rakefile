require 'html-proofer'
require 'pusher'

Pusher.app_id = ENV['PUSHER_APP_ID']
Pusher.key = ENV['PUSHER_APP_KEY']
Pusher.secret = ENV['PUSHER_APP_SECRET']

task :test do
  sh "gulp stylus"
  sh "gulp build"

  HTMLProofer.check_directory("./_site", {:disable_external => true, :verbose => true, :only_4xx => true}).run
end

task :refresh do
  Pusher.trigger('city_hall_signage', 'refresh', :refresh => true)
end
