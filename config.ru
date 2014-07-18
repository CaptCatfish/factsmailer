require './app'
run Sinatra::Application

Mail.defaults do
  delivery_method :smtp, {
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :domain => localhost:9393,
    :user_name => "charliestone1000@gmail.com",
    :password => "kamuti1000",
    :authentication => 'plain',
    :enable_starttls_auto => true
  }
end