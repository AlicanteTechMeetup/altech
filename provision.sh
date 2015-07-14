sudo apt-get -y install git autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev sqlite3 libsqlite3-dev
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

source ~/.bash_profile

rbenv install 2.2.2 # current latest version of MRI

# set current ruby to 2.2.2
rbenv shell 2.2.2

# skip document generation to make install faster
echo 'install: --no-ri --no-rdoc' >> ~/.gemrc
echo 'update: --no-ri --no-rdoc' >> ~/.gemrc

gem install bundler rails
