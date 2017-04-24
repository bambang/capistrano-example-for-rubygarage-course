# Load DSL and set up stages
require 'capistrano/setup'

# Include default deployment tasks
require 'capistrano/deploy'

# Load the SCM plugin
require 'capistrano/scm/git'

install_plugin Capistrano::SCM::Git

# Include tasks from other gems
require 'capistrano/rails'     # https://github.com/capistrano/rails
require 'capistrano/puma'      # https://github.com/seuros/capistrano-puma
require 'airbrussh/capistrano' # https://github.com/mattbrictson/airbrussh

install_plugin Capistrano::Puma

# Load custom tasks from `lib/capistrano/tasks' if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
