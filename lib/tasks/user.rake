namespace :user do
  desc "TODO"
  task update_all: :environment do
    users = User.all
    users.each do |user|
      UpdateUserJob.perform_later(user)
    end
  end
end
