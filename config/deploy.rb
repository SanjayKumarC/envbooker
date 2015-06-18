# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'envbooker'
set :repo_url, 'git@bitbucket.org:gnuchu/envbooker.git'
set :deploy_to, '/home/deploy/envbooker'
set :keep_releases, 5
set :linked_files, %w{config/database.yml .rbenv-vars}
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :bundle_binstubs, nil

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
end