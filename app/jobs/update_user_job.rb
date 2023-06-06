class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform(user)
    # Do something later
    puts "Setting #{user.email.split("@").first}'s location to London"
    sleep 2
    user.location = "London"
    user.save
    puts "#{user.email.split("@").first}'s location is now #{user.location}"
  end
end
