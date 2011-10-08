directory = File.expand_path(File.dirname(__FILE__))
require File.join(directory,'capistrano_database_yml')
require File.join(directory,'settings_yml')

set :application, "ffc.silverchairsolutions.com"
set :repository,  "git@github.com:mwhagedorn/fat_free_crm.git"

set :scm, 'git'
set :deploy_via, :remote_cache
set :branch, 'master'
set :scm_verbose, true
set :git_shallow_clone, 1

set :user, 'mhagedorn'  # Your dreamhost account's username
set :domain, 'ffc.silverchairsolutions.com'  # Dreamhost servername where your account is located 
set :applicationdir, "/home/#{user}/#{application}"  # The standard Dreamhost setup


# roles (servers)
role :web, domain
role :app, domain
role :db,  domain, :primary => true

# deploy config
set :deploy_to, applicationdir
set :deploy_via, :export

# additional settings
default_run_options[:pty] = true  # Forgo errors when deploying from windows
ssh_options[:keys] = %w(~/.ssh/id_rsa)            # If you are using ssh_keys
set :chmod755, "app config db lib public vendor script script/* public/disp*"
set :use_sudo, false

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end

namespace :bundler do

  task :install, :roles => :app do
    run "cd #{release_path} && bundle install --deployment"

    on_rollback do
      if previous_release
        run "cd #{previous_release} && bundle install --deployment"
      else
        logger.important "no previous release to rollback to, rollback of bundler:install skipped"
      end
    end
  end

end

after "deploy:rollback:revision", "bundler:install"
after "deploy:update_code", "bundler:install"
 
default_environment['PATH']='/usr/lib/ruby/gems/1.8/bin:/home/mhagedorn/.gems/bin:/usr/local/bin:/usr/bin:/bin'
default_environment['GEM_PATH']='/home/mhagedorn/.gems:/usr/lib/ruby/gems/1.8'






