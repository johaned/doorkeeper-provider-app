# config/initializers/grape_attack.rb

Grape::Attack.configure do |config|
  config.adapter = ::Grape::Attack::Adapters::Memory.new
  config.throttle_limit = 600
  config.throttle_interval = 1.hour
end
