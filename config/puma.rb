# frozen_string_literal: true

workers Integer(ENV["WEB_CONCURRENCY"] || 1)
threads_count = Integer(ENV["RAILS_MAX_THREADS"] || 1)
threads threads_count, threads_count

preload_app!

port        ENV["PORT"]     || 3000
environment ENV["RACK_ENV"] || "development"

before_fork do
  ActiveRecord::Base.connection_pool.disconnect! if defined?(ActiveRecord)
end

on_worker_boot do
  ActiveRecord::Base.establish_connection
end
