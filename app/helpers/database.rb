def conn
  conn = PG::Connection.new(:host => '127.0.0.1', :user => 'root', :dbname => 'postgres', :port => '5432', :password => 'password')
  return conn
end