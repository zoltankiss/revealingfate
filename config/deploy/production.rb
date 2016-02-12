# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

role :app, '50.116.37.243'
role :web, '50.116.37.243'
role :db,  '50.116.37.243'

set :user, 'root'
set :deploy_to, "/rails_apps/revealingfate"
set :keep_releases, 5

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

server '50.116.37.243', user: 'root', roles: %w{web app}, my_property: :my_value

task :finish_deploy do
  on roles(:web) do
    execute 'cp /proj_files/revealingfate/Gemfile /rails_apps/revealingfate/current/Gemfile'
    execute 'cp /proj_files/revealingfate/database.yml /rails_apps/revealingfate/current/config/database.yml'
    execute 'cp /proj_files/revealingfate/secrets.yml /rails_apps/revealingfate/current/config/secrets.yml'
    execute "cd '#{release_path}'; bundle install"
    execute "cd '#{release_path}'; RAILS_ENV=development bin/rake assets:precompile"
    execute '/etc/init.d/apache2 restart'
  end
end

after "deploy:published", "finish_deploy"


# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# And/or per server (overrides global)
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
