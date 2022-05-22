class User < Sinatra::Base
  def self.users
    return conn.exec_params('SELECT * FROM pg_user;')
  end

  configure do
    set :users, User.users
  end
end
