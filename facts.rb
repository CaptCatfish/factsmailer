require 'mailgun'
require_relative "scrape.rb"

class Email
 def initialize(to, subject)
    @to = to
    @subject = subject
  end
  
  Mailgun.configure do |config|
    config.api_key = 'key-4asjqhi4oll0mc8bo0proug7m2o9di69'
    config.domain  = 'sandbox7eeb083c72bd46d6aaef35f5a8ee27f6.mailgun.org'
  end

  # def mailing_list
  #  @mailgun = Mailgun()
  #  @mailgun.lists.create("postmaster@sandbox7eeb083c72bd46d6aaef35f5a8ee27f6.mailgun.org")
  #  @mailgun.list_members.add("postmaster@sandbox7eeb083c72bd46d6aaef35f5a8ee27f6.mailgun.org")
  #  @addresses = @mailgun.list_members.list ("postmaster@sandbox7eeb083c72bd46d6aaef35f5a8ee27f6.mailgun.org")
  # end
  
  def send_my_email
   fact = Fact.new
   @mailgun = Mailgun()
   parameters = {
    :to => @to,
    :subject => @subject,
    :text => fact.fact,
    :from => "postmaster@sandbox7eeb083c72bd46d6aaef35f5a8ee27f6.mailgun.org"
   }
   @mailgun.messages.send_email(parameters)
  end
end #ends class

email= Email.new("charliestone1000@gmail.com", "here's a list of facts", )
email.send_my_email

