Capistrano::Configuration.instance.load do
  namespace :deploy do
    namespace :settings do
      desc <<-DESC
        creates the settings file in the shared path

        By default, this task uses a template  \
        called settings.yml.erb is found in /config/deploy
      DESC
      task :setup, :except =>{:no_release => true} do
        location = fetch(:template_dir, "config/deploy") + '/settings.yml.erb'
        template = File.read(location)
        config = ERB.new(template)
        run "mkdir -p #{shared_path}/config"
        put config.result(binding), "#{shared_path}/config/settings.yml"
      end
      desc <<-DESC
        [internal] Updates the symlink for settings.yml file to the just deployed release.
      DESC
      task :symlink, :except => {:no_release => true} do
        run "ln -nfs #{shared_path}/config/settings.yml #{release_path}/config/settings.yml"
      end
    end
    after "deploy:setup", "deploy:settings:setup" unless fetch(:skip_settings_setup, false)
    after "deploy:finalize_update", "deploy:settings:symlink"
  end
end

