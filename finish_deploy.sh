cp /proj_files/revealingfate/Gemfile /rails_apps/revealingfate/current/Gemfile
cp /proj_files/revealingfate/database.yml /rails_apps/revealingfate/current/config/database.yml
cp /proj_files/revealingfate/secrets.yml /rails_apps/revealingfate/current/config/secrets.yml
bundle install
bin/rake assets:precompile
/etc/init.d/apache2 restart