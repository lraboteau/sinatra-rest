class User < Sinatra::Base
  def self.get_all
    @data = {
      'Clement': { first_name: 'Clement', last_name: 'Denizet', age: 32 },
      'Laurent':    { first_name: 'Laurent', last_name: 'Random', age: 47 },
      'Vincent':     { first_name: 'Vincent', last_name: 'Smith', age: 30 }
    }
  end

  configure do
    set :get_all, User.get_all
  end
end