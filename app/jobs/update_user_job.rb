class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform(user)
    # Do something later
    puts "Setting #{user.email.split("@").first}'s location to Berlin"
    sleep 4
    user.location = "Berlin"
    user.save
    puts "#{user.email.split("@").first}'s location is now #{user.location}"
  end
end
