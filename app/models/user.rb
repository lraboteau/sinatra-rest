# app/models/user.rb
class User
  attr_accessor :all
  
  def self.all
    result = DB[:pg_user]
    return result.all
  end

end
