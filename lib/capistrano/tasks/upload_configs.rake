######################################################################################################################
#                                                                                                                    #
#                                                THIS IS AN EXAMPLE!                                                 #
#                                                                                                                    #
#                             YOU MUST NOT STORE CONFIGURATION FILES IN THE REPOSITORY!                              #
#                                                                                                                    #
######################################################################################################################

namespace :deploy do
  desc 'Upload config files'
  task upload_configs: ['deploy:check:linked_dirs'] do
    on roles(:all) do
      execute "mkdir -p #{shared_path}/config"
      upload! 'config/database.production.yml', "#{deploy_to}/shared/config/database.yml"
      upload! 'config/secrets.production.yml', "#{deploy_to}/shared/config/secrets.yml"
    end
  end
end
