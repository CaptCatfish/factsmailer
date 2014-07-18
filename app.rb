require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require './lib/messaging.rb'
require './lib/scraping.rb'
require 'mailgun'


get '/' do
  #instance class from scraping.rb here
  #index.html.erb won't have access to your objects without it.
  @fact = Fact.new
  puts @fact
  @fact_text = @fact.facts_text
  puts @fact_text
  erb :index #this tells your program to use the html associated with the index.html.erb file in your browser
end 