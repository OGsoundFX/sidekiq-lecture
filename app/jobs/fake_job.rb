class FakeJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "starting job"
    sleep 5
    puts "job finished"
    # Do something later
  end
end
