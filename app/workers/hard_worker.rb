class HardWorker
  include Sidekiq::Worker

  def perform(name, count)
    # Do something
    puts "My name is #{name} and count is #{count}"
  end
end
