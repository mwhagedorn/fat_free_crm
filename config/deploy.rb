set :application, "ffc.silverchairsolutions.com"
set :repository,  "git@github.com:mwhagedorn/fat_free_crm.git"

set :scm, 'git'
#set :deploy_via, :remote_cache
#set :branch, 'master'
set :scm_verbose, true
#set :git_shallow_clone, 1
set :git_enable_submodules, 1

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
     run "touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end





