# config valid only for current version of Capistrano
lock '3.8.1'

set :application, 'Blog'

set :repo_url, "git@github.com:timlar/capistrano-example-for-rubygarage-course.git"
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

set :deploy_to, '/home/deployer/blog'

append :linked_files, *%w(
  config/database.yml
  config/secrets.yml
)

append :linked_dirs, *%w(
  log
  public/system
  public/uploads
  tmp/cache
  tmp/pids
  tmp/sockets
  vendor/bundle
)

set :keep_releases, 5

# Puma config
# https://github.com/seuros/capistrano-puma#other-configs
set :puma_init_active_record, true
set :puma_preload_app, true
