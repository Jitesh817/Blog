require 'resque-retry'

class PutQueue
  extend Resque::Plugins::Retry
  @queue = :first_queue

  @retry_limit = 4
  @retry_delay = 5
  def self.perform(a, b)
    puts a*b
  end
end