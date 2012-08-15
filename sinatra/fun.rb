require "rubygems"
require "bundler/setup"

require "sinatra"
class ParseObject
  attr_accessor :createdAt, :updatedAt,:objectId 
end
class Joke < ParseObject
  attr_accessor :content, :author
  
end
class User < ParseObject
  attr_accessor :username, :password, :email, :emailVerified, :phone
end

class Fun < Sinatra::Base
  get '/' do
    
  end
end