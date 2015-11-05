task :kyle => :environment do
  User.create!(email: 'sinade.kai@gmail.com', password: 'sdf2342Q1!', password_confirmation: 'sdf2342Q1!')
end
