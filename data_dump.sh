ssh root@50.116.37.243 'cd /rails_apps/revealingfate/current/ && echo "performing data dump..." && RAILS_ENV=production bundle exec rake db:data:dump'
echo "transfering data from the server to local machine..."
scp root@50.116.37.243:/rails_apps/revealingfate/current/db/data.yml `pwd`/db/
echo "done. Run 'bundle exec rake db:data:load' locally to load data"
