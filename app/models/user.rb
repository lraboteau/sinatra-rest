# app/models/user.rb
class User < Sinatra::Base
  def self.all
    result = DB[:pg_user]
    return result.all
  end

  configure do
    set :all, User.all
  end
end
