# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

desc 'This is test task'
task :test do
  on roles(:web) do
    execute 'pwd'
  end
end

# set :application, 'capistrano-deploy-test'
# set :scm, :git
# set :repo_url, 'git@github.com:arsley/capistrano-deploy-test.git'
# set :deploy_to, '/www/capistrano-deploy-test'
# set :branch, ENV['BRANCH_NAME'] || 'master'
