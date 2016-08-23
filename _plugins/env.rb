# Plugin to add environment variables to the `site` object in Liquid templates

module Jekyll

  class EnvironmentVariablesGenerator < Generator

    def generate(site)
      site.config['pusher_app_key'] = ENV['PUSHER_APP_KEY'] || '080d9fdb5958cef6a952'
      site.config['pusher_channel'] = ENV['PUSHER_CHANNEL'] || 'dev_channel'
      site.config['events_api'] = ENV['EVENTS_URL'] || 'https://hub.dd:8443/api/v1/upcoming-events'
    end

  end

end
