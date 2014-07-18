require 'open-uri'
require 'nokogiri'
require_relative 'messaging.rb'
class Fact
  def initialize

    html = open ("http://www.factmonster.com/dayinhistory")
    @facts_doc = Nokogiri::HTML(html)
    @facts_h3 = @facts_doc.css("td.bodybg").xpath("//h3")
    @facts_p = @facts_doc.css("td.bodybg").xpath("//p")
    @facts_text = @facts_h3.zip(@facts_p)
    @facts_text.each do |year, text|
    end
  end

  def facts_text
    @facts_text
  end
end 

