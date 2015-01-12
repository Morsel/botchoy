Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = 'Bot Choy'

  # The locale code for the language to use.
  # config.robot.locale = :en

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :info

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  # config.robot.admins = ["1", "2"]

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  config.robot.adapter = :hipchat

  config.adapter.jid = ENV['LITA_HIPCHAT_JID']
  config.adapter.password = ENV['LITA_HIPCHAT_PASSWORD']
  config.adapter.debug = false
  config.adapter.rooms = :all
  config.adapter.muc_domain = "conf.hipchat.com"

  ## Example: Set options for the Redis connection.
  config.redis.url = ENV['REDISTOGO_URL']
  config.http.port = ENV['PORT']

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = "value"
  config.handlers.pivotal_tracker.token = ENV['LITA_PIVOTAL_TOKEN']
  config.handlers.thats_what_she_said.threshold = 20.0
end
