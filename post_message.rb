# post_message.rb

require 'pry'

require "net/http"
require "uri"

puts ""
print "Who do you want to message? "
to = gets.chomp

print "Who are you? "
from = gets.chomp

print "Your message: "
content = gets.chomp

puts ""
print "Sending message..."

uri = URI("http://localhost:9292")

# TODO: Post the message to the server
# message = Net::HTTP.post_form(uri, {:from => from, :content => content})

response = Net::HTTP.post_form(uri, :from =>  from , :content => content, :created_at => Time.now)


if response.code != "200"
  puts "Oops, something went wrong :("
else
  puts "done!"
end

puts ""
