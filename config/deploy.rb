# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :rbenv_type, :user
set :rbenv_ruby, File.read('.ruby-version').strip
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w[rake gem bundle ruby rails]

set :application, 'capistrano-deploy-test'
set :repo_url, 'git@github.com:arsley/capistrano-deploy-test.git'
set :deploy_to, '/www/capistrano-deploy-test'
set :branch, ENV['BRANCH_NAME'] || 'master'
