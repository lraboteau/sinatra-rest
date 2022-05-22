# app/controllers/application_controller.rb
class ApplicationController < Sinatra::Base

  configure do
    set :public_dir, 'public'
    set :views, 'app/views'
  end

  get '/assets/css/main.css' do
    sass :'../../public/assets/css/main'
  end

  get '/' do
    slim :'index'
  end

  get '/users' do
    User.get_all.map { |name, data| data.merge(id: name) }.to_json
  end

  not_found do
    slim :'error'
  end

end