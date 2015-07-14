# Getting started

## Boot vm by vagrant

### Shortcut for Meetup attendee

```
wget --no-check-certificate "https://www.dropbox.com/s/fbbhmi4823owpax/package.box"
vagrant box add package.box --name altech
```

Replace Vagrantfile with this

```ruby
Vagrant.configure(2) do |config|
  config.vm.box = "altech"
  config.vm.hostname = "development"
  config.vm.network "forwarded_port", guest: 3000, host: 3000
end
```

Then, run these commands

```
vagrant up
vagrant ssh
```

### For others or who couldn't download prepared box

```
vagrant box add ubuntu/trusty64
vagrant up
vagrant ssh
```

## Setup git and rbenv

```
cd /vagrant
mkdir example
cd example

# Initialize git reporisoty
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git init

# Set ruby 2.2.2 as project default ruby
rbenv local 2.2.2
git add .
git commit -m "Set ruby version"
```

## Create a rails project

```
rails new .

# uncomment `gem 'therubyracer', platform: :ruby`
bundle

# start rails server
# about '-b 0.0.0.0' see here http://guides.rubyonrails.org/4_2_release_notes.html#default-host-for-rails-server
bin/rails s -b 0.0.0.0

# Open http://localhost:3000 from host machine's browser
open http://localhost:3000

# Commit initial state of project
git add .
git commit -m "Hello rails"
```
