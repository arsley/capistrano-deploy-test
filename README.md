# Capistrano deploy test with Rails app

## Preparation memo

```
$ ssh-add
$ ssh -A deploy@remote 'ssh git@github.com'

$ sudo mkdir /www
$ sudo chown deploy:deploy /www
```

## Usage

```
# create config/secrets.yml with credential
$ rails secret # => this generates only credential

# copy credential to remote server then deploy
$ cap production secrets_yml:setup
$ cap production deploy
```

## Refs

- [How To Install Ruby on Rails with rbenv on Ubuntu 16.04 | DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-16-04)
- [Installing Passenger + Nginx on Ubuntu 16.04 LTS (with APT) on a Digital Ocean production server (part 2) - deployment walkthrough with Ruby, Passenger, Nginx, Ubuntu 16.04 LTS (with APT) and Digital Ocean - Passenger Library](https://www.phusionpassenger.com/library/walkthroughs/deploy/ruby/digital_ocean/nginx/oss/xenial/install_passenger.html)
- [How to Install NVM (Node Version Manager) for Node.js on Ubuntu 12.04 LTS | Liquid Web Knowledge Base](https://www.liquidweb.com/kb/how-to-install-nvm-node-version-manager-for-node-js-on-ubuntu-12-04-lts/)
- [Capistrano3でGithubにあるコードをデプロイ - Qiita](https://qiita.com/s-kiriki/items/08d500893c0764510e43)
- [amazon ec2 - git authentication error in capistrano 3.2.1 - Stack Overflow](https://stackoverflow.com/questions/32904448/git-authentication-error-in-capistrano-3-2-1)
