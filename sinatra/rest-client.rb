require "rubygems"
require "bundler/setup"

require 'rest_client'
require "json"

#reference: https://github.com/archiloque/rest-client/

header_hash = {
  "X-Parse-Application-Id" => ENV['APPLICATION_ID'],
  "X-Parse-REST-API-Key" => ENV['REST_API_KEY']
}
resp = RestClient.get 'https://api.parse.com/1/classes/TestObject/rHE2tILPdS', header_hash

resp_json = JSON.parse resp.body
puts resp_json
puts "foo = #{resp_json['foo']}"
puts "objectId = #{resp_json['objectId']}"
