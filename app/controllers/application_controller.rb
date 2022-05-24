# app/controllers/application_controller.rb
class ApplicationController < Sinatra::Base

  configure do
    set :public_dir, 'css'
    set :views, 'app/views'
  end

  get '/assets/css/main.css' do
    sass :'../../public/css/main'
  end

  get '/' do
    slim :'index'
  end

  get '/users' do
    @data  = User.all
    slim :'users'
  end

  get '/api/users' do
    data  = User.all
    return data.to_json
  end

  not_found do
    slim :'error'
  end

end
