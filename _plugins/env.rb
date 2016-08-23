# Plugin to add environment variables to the `site` object in Liquid templates

module Jekyll

  class EnvironmentVariablesGenerator < Generator

    def generate(site)
      site.config['pusher_app_key'] = ENV['PUSHER_APP_KEY'] || 'nothing to see here'
      site.config['pusher_channel'] = ENV['PUSHER_CHANNEL'] || 'wha wha what'
    end

  end

end
