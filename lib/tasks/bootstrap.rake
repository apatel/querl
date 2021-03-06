namespace :querl do
  desc "Add the default user"
  task :default_user => :environment do
    user = User.new(:username => 'user', :email => 'user@example.com')
    if %w[development test dev local].include?(Rails.env)
      user.password = "12345678"
    else
      user.password = User.random_password
    end
    user.save
    puts "User username is: #{user.username}"
    puts "User password is: #{user.password}"
  end
  
  desc "run all tasks in bootstrap"
  task :run_all => [:default_user] do
    puts "Ran all tasks!"
  end
end  