require 'bundler/capistrano'
require 'capistrano-rbenv'
require 'puma/capistrano'

set :rbenv_ruby_version, '2.0.0-p247'
#set :default_environment, { "PATH" => "/usr/local/rbenv/shims:/usr/local/rbenv/bin:$PATH", "RBENV_VERSION" => "1.9.3-p0" }

set :application, 'koshara'
set :repository, 'git@github.com:asides/koshara.git'
set :scm, :git

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

server '37.139.5.117', :app, :web, :db, :primary => true

set :ssh_options, { :forward_agent => true }
default_run_options[:shell] = 'bash -l'

set :user, 'koshara'
set :group, 'koshara'
set :use_sudo, false
set :rails_env, 'production'

set :project_name, 'koshara_store'

set :deploy_to, "/home/koshara/#{ project_name }"



# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"


after 'deploy:finalize_update', 'deploy:symlink_db'

namespace :deploy do
  desc "Symlinks the database.yml"
  task :symlink_db, :roles => :app do
    run "ln -nfs #{deploy_to}/shared/config/database.yml #{release_path}/config/database.yml"
  end
end

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end