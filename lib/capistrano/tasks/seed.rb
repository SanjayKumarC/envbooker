namespace :deploy do
  desc "reload the datbase with see data"
  task :seed do
    run "cd #{current_path}; bin/bundle exec rake db:seed RAILS_ENV=#{rails_env}"
  end
end