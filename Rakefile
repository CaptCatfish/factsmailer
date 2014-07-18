require 'open-uri'
require './lib/messaging.rb'
require './lib/scraping.rb'
task :default => [:facts]
task :facts do
  email = Email.new("charliestone1000@gmail.com", "here are some facts about what happened today!")
  email.send_my_email
end